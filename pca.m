% Plain PCA implementation, based on Jon Shlens code
function [PC,V] = pca(X)
  covariance = cov(X')';  
  [PC, V] = eig(covariance);
  
  V = diag(V);
  [~,rindices] = sort(-1*V);
  V = V(rindices);
  PC = PC(:,rindices);
end