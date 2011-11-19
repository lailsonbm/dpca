addpath('utils');

% dermatology
load('bases/dermatology/dermatology.mat');
dermatology = dermatology';
dermatology_data = dermatology(1:34,:);
dermatology_labels = dermatology(35,:);
[derm_train_data, derm_train_labels, derm_test_data, derm_test_labels] = split_dataset(dermatology_data, dermatology_labels);
save('bases/dermatology.mat', 'derm_train_data', 'derm_train_labels', 'derm_test_data', 'derm_test_labels');
clear;

% iris
load('bases/iris/iris.mat');
iris = iris';
iris_data = iris(1:4,:);
iris_labels = iris(5,:);
[iris_train_data, iris_train_labels, iris_test_data, iris_test_labels] = split_dataset(iris_data, iris_labels);
save('bases/iris.mat', 'iris_train_data', 'iris_train_labels', 'iris_test_data', 'iris_test_labels');
clear;

% sonar
load('bases/sonar/sonar.mat');
sonar = sonar';
sonar_data = sonar(1:60,:);
sonar_labels = sonar(61,:);
[sonar_train_data, sonar_train_labels, sonar_test_data, sonar_test_labels] = split_dataset(sonar_data, sonar_labels);
save('bases/sonar.mat', 'sonar_train_data', 'sonar_train_labels', 'sonar_test_data', 'sonar_test_labels');
clear;