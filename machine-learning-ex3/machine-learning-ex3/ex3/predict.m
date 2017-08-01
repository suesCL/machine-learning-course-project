function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

X = [ones(m, 1) X];       % add one to each training set, ones are in a column 

% calculate first hidden layer matrix a(2) in 25x5000
a2 = sigmoid(Theta1*transpose(X));
% calcuate the output layer  a(3) in 5000*10 
a2 = [ones(1,m); a2]; % add one row 1x5000 of ones to a2 
a3 = sigmoid( transpose(a2)*transpose(Theta2));
% find the max value's index in each row of a3 which is the P value
[max,p]= max(a3,[],2);










% =========================================================================


end
