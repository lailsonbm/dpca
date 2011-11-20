function [Ncorrect,Ntotal,P] = accuracy(labels, pred)
  Ncorrect = length(find(labels == pred));
  Ntotal = length(labels);
  P = Ncorrect/Ntotal;
end