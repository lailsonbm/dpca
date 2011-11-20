addpath('helpers');

% dermatology
load('bases/dermatology/results.mat');
acc_pca = derm_acc_pca;
acc_lda = derm_acc_lda;
dpca_results = derm_dpca_results;
plottitle = 'dermatology';
plot_result;
close;
clear;

% horse
load('bases/horse/results.mat');
acc_pca = horse_acc_pca;
acc_lda = horse_acc_lda;
dpca_results = horse_dpca_results;
plottitle = 'horse';
plot_result;
close;
clear;

% iris
load('bases/iris/results.mat');
acc_pca = iris_acc_pca;
acc_lda = iris_acc_lda;
dpca_results = iris_dpca_results;
plottitle = 'iris';
plot_result;
close;
clear;

% lymphography
load('bases/lymphography/results.mat');
acc_pca = lymph_acc_pca;
acc_lda = lymph_acc_lda;
dpca_results = lymph_dpca_results;
plottitle = 'lymphography';
plot_result;
close;
clear;

% sonar
load('bases/sonar/results.mat');
acc_pca = sonar_acc_pca;
acc_lda = sonar_acc_lda;
dpca_results = sonar_dpca_results;
plottitle = 'sonar';
plot_result;
close;
clear;

% wine
load('bases/wine/results.mat');
acc_pca = wine_acc_pca;
acc_lda = wine_acc_lda;
dpca_results = wine_dpca_results;
plottitle = 'wine';
plot_result;
close;
clear;