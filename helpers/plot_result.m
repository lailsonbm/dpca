number_labeled = [5 10 15 20 25 30 35 40 45 50];
n_number_labeled = length(number_labeled);

result_mean = mean(dpca_results);
result_std  =  std(dpca_results);
h = plot(number_labeled, repmat(acc_pca, [n_number_labeled 1]), 'm*-'); hold on;
plot(number_labeled, repmat(acc_lda, [n_number_labeled 1]), 'r+-');
plot(number_labeled, result_mean, 'bo-');
errorbar(number_labeled, result_mean, result_std*0.5);
xlim([3 52]);
xlabel('# of labeled data');
ylabel('accuracy');
legend('PCA', 'LDA', 'DPCA', 'Location', 'SouthEast');
title(plottitle);
saveas(h, sprintf('plots/%s.pdf', plottitle));
saveas(h, sprintf('plots/%s.fig', plottitle));