function [J, grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network



% Setup some useful variables
m = size(X, 1);
                          
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));


% add a column of 1 to X, call it a1
a1 = [ones(m, 1) X];    
% You need to return the following variables correctly 
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m

%calculate h(x)
z2=a1*transpose(Theta1); %dimension 5000x25
a2 = sigmoid(z2);
a2 = [ones(m,1) a2]; % calculate a2 with bias term, dimension 5000*26
h  = sigmoid(a2*transpose(Theta2)); % calculate a3 in 5000*10

%convert y to from a scalar to vectors 10*1
y_mat = eye(num_labels)(y,:);

%cost in matrix form before summing 
J= 1/m*sum(sum(-y_mat.*log(h)-(1-y_mat).*log(1-h)));

% add regularization to cost function
Theta1_reg = Theta1(:,2:end);
Theta2_reg = Theta2(:,2:end);
J= J+lambda/(2*m)*(sum(sum(Theta1_reg.^2))+sum(sum(Theta2_reg.^2)));


% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the 
%               first time.

%for loop to find Delta for each layer



    %calculate error term in output layer 
    delta_3 = h - y_mat; % 5000x10 dimension

    %calculate error term at hiddden layer 2
    delta_2 = delta_3*Theta2_reg.*sigmoidGradient(z2); % 5000x25
    
    Delta_2 = delta_3'*a2;
    Delta_1 = delta_2'*a1; 
    
    %unregularized gradient 
    Theta1_grad = 1/m*Delta_1;
    Theta2_grad = 1/m*Delta_2;


% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.

%set each layer theta's first column to be zero for regularization
reg_theta1 = Theta1;
reg_theta1(:,1)=0;
reg_theta2 = Theta2;
reg_theta2 (:,1)=0;

% regulaized term for gradient calculate
reg_grad1= lambda/m* reg_theta1;
reg_grad2= lambda/m* reg_theta2;

% regularized gradient 
Theta1_grad = Theta1_grad + reg_grad1;
Theta2_grad = Theta2_grad + reg_grad2;














% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
