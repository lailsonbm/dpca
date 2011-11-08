% Original DPCA algorithm
function [PC,V] = dpca(X, X_labeled, labels, eta, lambda, d)

equals = @(x,y) x == y;
[omegaBi omegaBj] = makeSet(X_labeled, labels, equals);

notEquals = @(x,y) x ~= y;
[omegaWi omegaWj] = makeSet(X_labeled, labels,  notEquals);

Sb = scatterMatrix(omegaBi, omegaBj);
Sw = scatterMatrix(omegaWi, omegaWj);

St = cov(X);

S = Sb - eta*Sw + lambda*St;

%calcular autovetores e ordenar...
end


function M = scatterMatrix(seti, setj)

xi = seti;
xj = setj;

n = size(seti, 1);
S = zeros(size(seti, 2));
for k = 1:n
    S = S + (xi(k, :) - xj(k, :))' * (xi(k, :) - xj(k, :));
end
M = S/n;
end

function [Si Sj] = makeSet(dataset, labels, compare)
    rows = size(dataset,1);
    cols = size(dataset,2);
    Si = [];
    Sj = [];
    
    k = 1;
    for i = 1:rows
        for j = 1:rows
           if(i ~= j && compare(labels(i), labels(j)))
               Si = cat(1, Si, dataset(i,:)); 
               Sj = cat(1, Sj, dataset(j,:)); 
               k = k + 1;
           end
        end
    end
end