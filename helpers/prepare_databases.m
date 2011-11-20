addpath('utils');


% dermatology
load('bases/raw.mat');
dermatology = dermatology';
dermatology_data = dermatology(1:34,:);
dermatology_labels = dermatology(35,:);
[derm_train_data, derm_train_labels, derm_test_data, derm_test_labels] = split_dataset(dermatology_data, dermatology_labels);
save('bases/dermatology.mat', 'derm_train_data', 'derm_train_labels', 'derm_test_data', 'derm_test_labels');
clear;

% horse
load('bases/raw.mat');
horse = horse';
horse_data = horse(1:27,:);
horse_labels = horse(28,:);
[horse_train_data, horse_train_labels, horse_test_data, horse_test_labels] = split_dataset(horse_data, horse_labels);
save('bases/horse.mat', 'horse_train_data', 'horse_train_labels', 'horse_test_data', 'horse_test_labels');
clear;

% iris
load('bases/raw.mat');
iris = iris';
iris_data = iris(1:4,:);
iris_labels = iris(5,:);
[iris_train_data, iris_train_labels, iris_test_data, iris_test_labels] = split_dataset(iris_data, iris_labels);
save('bases/iris.mat', 'iris_train_data', 'iris_train_labels', 'iris_test_data', 'iris_test_labels');
clear;

% lymph
load('bases/raw.mat');
lymphography = lymphography';
lymphography_data = lymphography(1:18,:);
lymphography_labels = lymphography(19,:);
[lymph_train_data, lymph_train_labels, lymph_test_data, lymph_test_labels] = split_dataset(lymphography_data, lymphography_labels);
save('bases/lymphography.mat', 'lymph_train_data', 'lymph_train_labels', 'lymph_test_data', 'lymph_test_labels');
clear;

% sonar
load('bases/raw.mat');
sonar = sonar';
sonar_data = sonar(1:60,:);
sonar_labels = sonar(61,:);
[sonar_train_data, sonar_train_labels, sonar_test_data, sonar_test_labels] = split_dataset(sonar_data, sonar_labels);
save('bases/sonar.mat', 'sonar_train_data', 'sonar_train_labels', 'sonar_test_data', 'sonar_test_labels');
clear;

% soybean
load('bases/raw.mat');
soybean = soybean';
soybean_data = soybean(1:34,:);
soybean_labels = soybean(35,:);
[soy_train_data, soy_train_labels, soy_test_data, soy_test_labels] = split_dataset(soybean_data, soybean_labels);
save('bases/soybean.mat', 'soy_train_data', 'soy_train_labels', 'soy_test_data', 'soy_test_labels');
clear;

% vowel
load('bases/raw.mat');
vowel = vowel';
vowel_data = vowel(4:13,:);
vowel_labels = vowel(14,:);
[vowel_train_data, vowel_train_labels, vowel_test_data, vowel_test_labels] = split_dataset(vowel_data, vowel_labels);
save('bases/vowel.mat', 'vowel_train_data', 'vowel_train_labels', 'vowel_test_data', 'vowel_test_labels');
clear;

% wine
load('bases/raw.mat');
wine = wine';
wine_data = wine(2:14,:);
wine_labels = wine(1,:);
[wine_train_data, wine_train_labels, wine_test_data, wine_test_labels] = split_dataset(wine_data, wine_labels);
save('bases/wine.mat', 'wine_train_data', 'wine_train_labels', 'wine_test_data', 'wine_test_labels');
clear;
