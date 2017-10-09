# Handwritten Digits Recognition 

## Overview 
* Neural Network 
  * Model representation 
  * Feedforward Propagation and Prediction 
  
## Neural Network 
### Problem Statement 

The project is to implement a neural network to recognize handwritten digits. 
Neural network is a more suitable suitable algoritm than logistic regression to predict handwirtten digits 
because it can represent complex models based on non-linear hypothesis. The code utilized parameters from a neural network that researchers have already trained and implements a feedforward propagation algorithm for prediction.

### Implementation 
The script **ex3_nn.** steps through the neural network algorithm in predicting handwritten digits.
* **Model representation:** 

The first step in using neural netowrk for training data is to select appropriate model representation. This project
utilized a neural network with three layers - an input layer, a hidden layer and an output layer. Since the input image
is of size 20 * 20, this gives an input layer with 400 units(excluding one extra bias unit). The hidden layer has 25 units and output layer has 10 units which correspond to 10 digit classes as shown below. The network parameters have dimensions  25 * 401 and 10 * 26 respectively.

![image](https://user-images.githubusercontent.com/26426412/31361130-a0aa8312-ad06-11e7-8ead-3e7c2be2b888.png)

* **Feedforward Propagation and Prediction:** 

Feedforward propagation computes predicted value h(xi) for each sample *i*. The code in **predict.m** demonstrates feedforward propagation.
```
function p = predict(Theta1, Theta2, X)
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained parameter of a neural network (Theta1, Theta2). X contains all the samples in rows.

m = size(X, 1);
num_labels = size(Theta2, 1);
p = zeros(size(X, 1), 1);
X = [ones(m, 1) X];       % add one to each training set, ones are in a column 

% calculate first hidden layer matrix a(2) in 25x5000
a2 = sigmoid(Theta1*transpose(X));

% calcuate the output layer  a(3) in 5000*10 
a2 = [ones(1,m); a2]; % add one row 1x5000 of ones to a2 
a3 = sigmoid( transpose(a2)*transpose(Theta2));

% find the max value's index in each row of a3 which is the P value
[max,p]= max(a3,[],2);

end
```

The file **ex3_nn** will compute the predicted value for the samples and display the accuracy about 97.5%. An interactive sequence will display images from training samples one at a time while console prints the predicted value for the displayed image. 

## Reference
Ng, A. (n.d.). Programming Exercise 3: Multi-class Classification and Neural Networks [PDF].


