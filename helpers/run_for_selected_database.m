disp(sprintf('Dimension = %d', dim));

% original
test_pred_original = knnclassify(test_data', train_data', train_labels, 1);
[~,~,acc_original] = accuracy(test_labels, test_pred_original');
disp(sprintf('Original set accuracy: %.2f%%', acc_original* 100));

% pca
[T_pca,V_pca] = pca(train_data);
T_pca = T_pca(:,1:dim);
train_data_pca = T_pca' * train_data;
test_data_pca = T_pca' * test_data;
test_pred_pca = knnclassify(test_data_pca', train_data_pca', train_labels, 1);
[~,~,acc_pca] = accuracy(test_labels, test_pred_pca');
disp(sprintf('PCA accuracy: %5.2f%%', acc_pca* 100));

% lda
[T_lda,V_lda] = lda(train_data', train_labels');
% T_lda = lda(train_data, train_labels);
train_data_lda = T_lda' * train_data;
test_data_lda = T_lda' * test_data;
test_pred_lda = knnclassify(test_data_lda', train_data_lda', train_labels, 1);
[~,~,acc_lda] = accuracy(test_labels, test_pred_lda');
disp(sprintf('LDA accuracy: %5.2f%%', acc_lda* 100));

% dpca pca
disp('DPCA accuracy');
trials = 100;
number_labeled = [5 10 15 20 25 30 35 40 45 50];
dpca_results = zeros(trials,length(number_labeled));
for i = 1:length(number_labeled)
  for t = 1:trials
    [train_data_labeled,train_labels_labeled,train_data_unlabeled] = split_random(train_data,train_labels, number_labeled(i));
    [T_dpca,V_dpca] = dpca(train_data_unlabeled, train_data_labeled, train_labels_labeled, eta, lambda);
    T_dpca = T_dpca(:,1:dim);
    train_data_dpca = T_dpca' * train_data;
    test_data_dpca = T_dpca' * test_data;
    test_pred_dpca = knnclassify(test_data_dpca', train_data_dpca', train_labels, 1);
    [~,~,acc_dpca] = accuracy(test_labels, test_pred_dpca');
    
    dpca_results(t,i) = acc_dpca;
  end
  
  result_mean = mean(dpca_results(:,i));
  result_std  = std(dpca_results(:,i));
  disp(sprintf('    with %2d labeled: %5.2f%% +- %5.2f%%', number_labeled(i), result_mean*100, result_std*100));
end

result_mean = mean(reshape(dpca_results, trials * length(number_labeled), 1));
result_std  =  std(reshape(dpca_results, trials * length(number_labeled), 1));
disp(sprintf('    general: %5.2f%% +- %5.2f%%', result_mean*100, result_std*100));

disp(' ');