addpath('utils');

load('bases/yale.mat');

number_labeled = [0 10 20 50];
classes = unique(labels);
plot_strs = {'*b', '+r', 'oc', '.y', 'xg', 'vm'};

[data_labeled,labels_labeled,~] = split_random(data,labels, 30);
[T_dpca,V_dpca] = dpca(data, data_labeled, labels_labeled, 10, 0.1);
data_proj = T_dpca(:,1:2)' * data;

for c = classes
  els_idx = find(labels==c);
  els = data_proj(:,els_idx);
  plot(els(1,:), els(2,:), plot_strs{c}); hold on;
end