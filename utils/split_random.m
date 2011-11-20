function [data_1,labels_1,data_2,labels_2] = split_random(data,labels,n)
  qtd = length(labels);
  if n >= qtd
    error('n must be smaller than number of observations')
  end
  
  sample_idx = randperm(qtd);
  sample_idx_1 = sample_idx(1:n);
  sample_idx_2 = sample_idx((n+1):end);
  
  data_1 = data(:,sample_idx_1);
  labels_1 = labels(sample_idx_1);
  
  data_2 = data(:,sample_idx_2);
  labels_2 = labels(sample_idx_2);
end