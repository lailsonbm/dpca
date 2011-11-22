function [eigvector,eigvalue] = LDA(data,gnd,options)
if ~exist('data','var')
    global data;
end

if (~exist('options','var'))
   options = [];
end

if ~isfield(options,'Regu') | ~options.Regu
    bPCA = 1;
    if ~isfield(options,'PCARatio')
        options.PCARatio = 1;
    end
else
    bPCA = 0;
    if ~isfield(options,'ReguType')
        options.ReguType = 'Ridge';
    end
    if ~isfield(options,'ReguAlpha')
        options.ReguAlpha = 0.1;
    end
end

tmp_T = cputime;

% ====== Initialization
[nSmp,nFea] = size(data);
if length(gnd) ~= nSmp
    error('gnd and data mismatch!');
end

classLabel = unique(gnd);
nClass = length(classLabel);
Dim = nClass - 1;

if bPCA & isfield(options,'Fisherface') & options.Fisherface
    options.PCARatio = nSmp - nClass;
end


if issparse(data)
    data = full(data);
end
sampleMean = mean(data,1);
data = (data - repmat(sampleMean,nSmp,1));



bChol = 0;
if bPCA & (nSmp > nFea+1) & (options.PCARatio >= 1)
    DPrime = data'*data;
    DPrime = max(DPrime,DPrime');
    [R,p] = chol(DPrime);
    
    if p == 0
        bPCA = 0;
        bChol = 1;
    end
end


%======================================
% SVD
%======================================
if bPCA    
    if nSmp > nFea
        ddata = data'*data;
        ddata = max(ddata,ddata');

        [eigvector_PCA, eigvalue_PCA] = eig(ddata);
        eigvalue_PCA = diag(eigvalue_PCA);
        clear ddata;

        maxEigValue = max(abs(eigvalue_PCA));
        eigIdx = find(eigvalue_PCA/maxEigValue < 1e-12);
        eigvalue_PCA(eigIdx) = [];
        eigvector_PCA(:,eigIdx) = [];

        [junk, index] = sort(-eigvalue_PCA);
        eigvalue_PCA = eigvalue_PCA(index);
        eigvector_PCA = eigvector_PCA(:, index);
        
        %=======================================
        if options.PCARatio > 1
            idx = options.PCARatio;
            if idx < length(eigvalue_PCA)
                eigvalue_PCA = eigvalue_PCA(1:idx);
                eigvector_PCA = eigvector_PCA(:,1:idx);
            end
        elseif options.PCARatio < 1
            sumEig = sum(eigvalue_PCA);
            sumEig = sumEig*options.PCARatio;
            sumNow = 0;
            for idx = 1:length(eigvalue_PCA)
                sumNow = sumNow + eigvalue_PCA(idx);
                if sumNow >= sumEig
                    break;
                end
            end
            eigvalue_PCA = eigvalue_PCA(1:idx);
            eigvector_PCA = eigvector_PCA(:,1:idx);
        end
        %=======================================
        
        eigvalue_PCA = eigvalue_PCA.^-.5;
        data = (data*eigvector_PCA).*repmat(eigvalue_PCA',nSmp,1);
    else
        ddata = data*data';
        ddata = max(ddata,ddata');

        [eigvector, eigvalue_PCA] = eig(ddata);
        eigvalue_PCA = diag(eigvalue_PCA);
        clear ddata;

        maxEigValue = max(eigvalue_PCA);
        eigIdx = find(eigvalue_PCA/maxEigValue < 1e-12);
        eigvalue_PCA(eigIdx) = [];
        eigvector(:,eigIdx) = [];

        [junk, index] = sort(-eigvalue_PCA);
        eigvalue_PCA = eigvalue_PCA(index);
        eigvector = eigvector(:, index);
        
        %=======================================
        if options.PCARatio > 1
            idx = options.PCARatio;
            if idx < length(eigvalue_PCA)
                eigvalue_PCA = eigvalue_PCA(1:idx);
                eigvector = eigvector(:,1:idx);
            end
        elseif options.PCARatio < 1
            sumEig = sum(eigvalue_PCA);
            sumEig = sumEig*options.PCARatio;
            sumNow = 0;
            for idx = 1:length(eigvalue_PCA)
                sumNow = sumNow + eigvalue_PCA(idx);
                if sumNow >= sumEig
                    break;
                end
            end
            eigvalue_PCA = eigvalue_PCA(1:idx);
            eigvector = eigvector(:,1:idx);
        end
        %=======================================
        

        eigvalue_PCA = eigvalue_PCA.^-.5;
        eigvector_PCA = (data'*eigvector).*repmat(eigvalue_PCA',nFea,1);

        data = eigvector;
        clear eigvector;
    end
else
    if ~bChol
        DPrime = data'*data;
        
%         options.ReguAlpha = nSmp*options.ReguAlpha;

        switch lower(options.ReguType)
            case {lower('Ridge')}
                for i=1:size(DPrime,1)
                    DPrime(i,i) = DPrime(i,i) + options.ReguAlpha;
                end
            case {lower('Tensor')}
                DPrime = DPrime + options.ReguAlpha*options.regularizerR;
            case {lower('Custom')}
                DPrime = DPrime + options.ReguAlpha*options.regularizerR;
            otherwise
                error('ReguType does not exist!');
        end

        DPrime = max(DPrime,DPrime');
    end
end


[nSmp,nFea] = size(data);

Hb = zeros(nClass,nFea);
for i = 1:nClass,
    index = find(gnd==classLabel(i));
    classMean = mean(data(index,:),1);
    Hb (i,:) = sqrt(length(index))*classMean;
end

elapse.timeW = 0;
elapse.timePCA = cputime - tmp_T;


tmp_T = cputime;

if bPCA
    [dumpVec,eigvalue,eigvector] = svd(Hb,'econ');
    
    eigvalue = diag(eigvalue);
    eigIdx = find(eigvalue < 1e-3);
    eigvalue(eigIdx) = [];
    eigvector(:,eigIdx) = [];

    eigvalue = eigvalue.^2;
    eigvector = eigvector_PCA*(repmat(eigvalue_PCA,1,length(eigvalue)).*eigvector);
else
    WPrime = Hb'*Hb;
    WPrime = max(WPrime,WPrime');

    dimMatrix = size(WPrime,2);
    if Dim > dimMatrix
        Dim = dimMatrix;
    end
    
    if isfield(options,'bEigs')
        if options.bEigs
            bEigs = 1;
        else
            bEigs = 0;
        end
    else
        if (dimMatrix > 1000 & Dim < dimMatrix/10) | (dimMatrix > 500 & Dim < dimMatrix/20) | (dimMatrix > 250 & Dim < dimMatrix/30) 
            bEigs = 1;
        else
            bEigs = 0;
        end
    end
    
    if bEigs
        %disp('use eigs to speed up!');
        option = struct('disp',0);
        if bChol
            option.cholB = 1;
            [eigvector, eigvalue] = eigs(WPrime,R,Dim,'la',option);
        else
            [eigvector, eigvalue] = eigs(WPrime,DPrime,Dim,'la',option);
        end
        eigvalue = diag(eigvalue);
    else
        [eigvector, eigvalue] = eig(WPrime,DPrime);
        eigvalue = diag(eigvalue);

        [junk, index] = sort(-eigvalue);
        eigvalue = eigvalue(index);
        eigvector = eigvector(:,index);

        if Dim < size(eigvector,2)
            eigvector = eigvector(:, 1:Dim);
            eigvalue = eigvalue(1:Dim);
        end
    end
end

for i = 1:size(eigvector,2)
    eigvector(:,i) = eigvector(:,i)./norm(eigvector(:,i));
end


elapse.timeMethod = cputime - tmp_T; 
elapse.timeAll = elapse.timePCA + elapse.timeMethod;
    
