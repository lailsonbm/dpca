% INPUTS
%   data         - dataset with lines as attributes and columns as observations
%   labels       - line vector with labels for each observation
%   labeled_prop - proportion of labeled data for training (0..1)
% OUTPUTS
%   TNDU train_unlabeled - dataset for training with unlabeled observations
%   TNDL train_labeled   - dataset for training with labeled observations
%   TNL  train_labels    - line vector with labels for labeled training set
%   TSD  test_data       - dataset for testing
%   TSL  test_labels     - line vector with labels for testing set

function [TNDU,TNDL,TNL,TSD,TSL] = split_dataset(data, labels, labeled_prop)
  cvpart = cvpartition(labels, 'kfold', 2);
  train_idx = find(cvpart.training(1));
  test_idx = find(cvpart.test(1));
  
  train_labeled_size = round(length(train_idx) * labeled_prop);
  train_idx_labeled  = train_idx(1:train_labeled_size);
  train_idx_unlabeled = train_idx((train_labeled_size+1):end);
  
  train_unlabeled = data(:,train_idx_unlabeled);
  train_labeled = data(:,train_idx_labeled);
  train_labels = labels(train_idx_labeled);
  test_data = data(:,test_idx);
  test_labels = labels(:,test_idx);
  
  TNDU = train_unlabeled;
  TNDL = train_labeled;
  TNL  = train_labels;
  TSD  = test_data;
  TSL  = test_labels;
end