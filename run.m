addpath('utils');
addpath('helpers');

% EXPERIMENTS

%% -----------

disp('DERMATOLOGY')
load('bases/dermatology.mat');
train_data = derm_train_data;
train_labels = derm_train_labels;
test_data = derm_test_data;
test_labels = derm_test_labels;
dim = 6;
eta = 10;
lambda = 1;
run_for_selected_database;
derm_acc_pca = acc_pca;
derm_acc_lda = acc_lda;
derm_dpca_results = dpca_results;
save('bases/dermatology/results.mat', 'derm_acc_pca', 'derm_acc_lda', 'derm_dpca_results');
clear;

%% -----------

disp('HORSE')
load('bases/horse.mat');
train_data = horse_train_data;
train_labels = horse_train_labels;
test_data = horse_test_data;
test_labels = horse_test_labels;
dim = 2;
eta = 1;
lambda = 1;
run_for_selected_database;
horse_acc_pca = acc_pca;
horse_acc_lda = acc_lda;
horse_dpca_results = dpca_results;
save('bases/horse/results.mat', 'horse_acc_pca', 'horse_acc_lda', 'horse_dpca_results');
clear;

%% -----------

disp('IRIS')
load('bases/iris.mat');
train_data = iris_train_data;
train_labels = iris_train_labels;
test_data = iris_test_data;
test_labels = iris_test_labels;
dim = 3;
eta = 1;
lambda = 1;
run_for_selected_database;
iris_acc_pca = acc_pca;
iris_acc_lda = acc_lda;
iris_dpca_results = dpca_results;
save('bases/iris/results.mat', 'iris_acc_pca', 'iris_acc_lda', 'iris_dpca_results');
clear;

%% -----------

disp('LYMPH')
load('bases/lymphography.mat');
train_data = lymph_train_data;
train_labels = lymph_train_labels;
test_data = lymph_test_data;
test_labels = lymph_test_labels;
dim = 4;
eta = 10;
lambda = 1;
run_for_selected_database;
lymph_acc_pca = acc_pca;
lymph_acc_lda = acc_lda;
lymph_dpca_results = dpca_results;
save('bases/lymphography/results.mat', 'lymph_acc_pca', 'lymph_acc_lda', 'lymph_dpca_results');
clear;

%% -----------

disp('SONAR')
load('bases/sonar.mat');
train_data = sonar_train_data;
train_labels = sonar_train_labels;
test_data = sonar_test_data;
test_labels = sonar_test_labels;
eta = 1;
lambda = 1;
dim = 2;
run_for_selected_database;
sonar_acc_pca = acc_pca;
sonar_acc_lda = acc_lda;
sonar_dpca_results = dpca_results;
save('bases/sonar/results.mat', 'sonar_acc_pca', 'sonar_acc_lda', 'sonar_dpca_results');
clear;

%% -----------

% disp('SOYBEAN')
% load('bases/soybean.mat');
% train_data = soy_train_data;
% train_labels = soy_train_labels;
% test_data = soy_test_data;
% test_labels = soy_test_labels;
% eta = 10;
% lambda = 1;
% dim = 4;
% run_for_selected_database;
% soy_acc_pca = acc_pca;
% soy_acc_lda = acc_lda;
% soy_dpca_results = dpca_results;
% save('bases/soybean/results.mat', 'soy_acc_pca', 'soy_acc_lda', 'soy_dpca_results');
% clear;

%% -----------

% disp('VOWEL')
% load('bases/vowel.mat');
% train_data = vowel_train_data;
% train_labels = vowel_train_labels;
% test_data = vowel_test_data;
% test_labels = vowel_test_labels;
% eta = 1;
% lambda = 1;
% dim = 10;
% run_for_selected_database;
% vowel_acc_pca = acc_pca;
% vowel_acc_lda = acc_lda;
% vowel_dpca_results = dpca_results;
% save('bases/vowel/results.mat', 'vowel_acc_pca', 'vowel_acc_lda', 'vowel_dpca_results');
% clear;

%% -----------

disp('WINE')
load('bases/wine.mat');
train_data = wine_train_data;
train_labels = wine_train_labels;
test_data = wine_test_data;
test_labels = wine_test_labels;
eta = 10;
lambda = 1;
dim = 3;
run_for_selected_database;
wine_acc_pca = acc_pca;
wine_acc_lda = acc_lda;
wine_dpca_results = dpca_results;
save('bases/wine/results.mat', 'wine_acc_pca', 'wine_acc_lda', 'wine_dpca_results');
clear;
