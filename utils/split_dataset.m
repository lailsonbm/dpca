% INPUTS
%   data   - dataset with lines as attributes and columns as observations
%   labels - line vector with labels for each observation
% OUTPUTS
%   train_data    - dataset for training
%   train_labels  - line vector with labels for training set
%   test_data     - dataset for testing
%   test_labels   - line vector with labels for testing set

function [train_data, train_labels, test_data, test_labels] = split_dataset(data, labels)
  cvpart = cvpartition(labels, 'kfold', 2);
  train_idx = shuffle(find(cvpart.training(1)));
  test_idx  = find(cvpart.test(1));
  
  train_data = data(:,train_idx);
  train_labels = labels(train_idx);
  test_data = data(:,test_idx);
  test_labels = labels(:,test_idx);
end