% Original DPCA algorithm
function [PC,V] = dpca(X, X_labeled, labels, eta, lambda)
  % X          matrix with all examples (each column is an example)
  % X_labeled  matrix with labeled examples (each column is an example)
  % labels     row-vector with labels of X_labels matrix
  
  n_labeled = size(X_labeled, 2);
  if(n_labeled ~= size(labels,2))
    error('Number of labels do not match number of labeled examples');
  end
  
  % Omega sets
  O_b = [];
  O_w = [];
  combinations = nchoosek(1:n_labeled,2);
  for k = 1:size(combinations,1)
    i = combinations(k,1);
    j = combinations(k,2);
    if i ~= j
      if labels(i) == labels(j)
        O_w(end+1,:) = combinations(k,:);
      else
        O_b(end+1,:) = combinations(k,:);
      end
    end
  end
  
  % S_b
  S_b = 0;
  for k = 1:size(O_b,1)
    i = O_b(k,1);
    j = O_b(k,2);
    x_i = X_labeled(:,i);
    x_j = X_labeled(:,j);
    S_b = S_b + (x_i - x_j)*(x_i - x_j)';
  end
  if size(O_b,1) > 0
    S_b = S_b/size(O_b,1);
  end
  
  % S_w
  S_w = 0;
  for k = 1:size(O_w,1)
    i = O_w(k,1);
    j = O_w(k,2);
    x_i = X_labeled(:,i);
    x_j = X_labeled(:,j);
    S_w = S_w + (x_i - x_j)*(x_i - x_j)';
  end
  if size(O_w,1) > 0
    S_w = S_w/size(O_w,1);
  end
  
  % S_t
  S_t = cov(X',1);
  
  S = S_b - eta*S_w + lambda*S_t;
  
  [PC, V] = eig(S);
  V = diag(V);
  [~,rindices] = sort(-1*V);
  V = V(rindices);
  PC = PC(:,rindices);
end