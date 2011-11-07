function [PC,V] = lda(X,labels)
  classes = unique(labels);
  mn = mean(X,2);
  Sw = 0;
  Sb = 0;
  for l = classes
    indexes = (classes == l);
    l_samples = X(:,indexes);
    mn_l = mean(l_samples,2);
    n_l = sum(indexes);
    
    % Matriz de dispersao entre classes
    delta = mn_l - mn;
    Sb = Sb + (n_l * delta * delta');
    
    % Matriz de dispersao intra classes
    for i = 1:n_l
      e = l_samples(:,i) - mn;
      Sw = Sw + (delta * delta');
    end
    
    % Ajuste
    if det(Sw) == 0
      warning('Singular matrix found. Adjusting values...');
      Sw = Sw + 0.0001*eye(size(Sw,1));
    end
    
    [PC,V] = eig(Sw\Sb);
    
    V = diag(V);
    [~,rindices] = sort(-1*V);
    V = V(rindices);
    PC = PC(:,rindices);
  end
end