% Shuffle a vector
function shuffled = shuffle(A)
  shuffled = A(randperm(length(A)));
end