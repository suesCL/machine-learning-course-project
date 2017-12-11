# Logistic Regression for Classification 

## Overview 
* Regularized logistic regression 
  * Visualizing the data
  * Feature mapping 
  * Cost function and gradient descent 
  * Plotting decision boundary 
  
## Regularized Logistic Regression 
### Problem Statement 
Implement regularized logistic regression to predict whether microchips from a fabrication plant passes quality assurance. The dataset of test results on past microchips will be used as training set.  
 
 ### Implementation 
* **Visualizing the data:**
 
 The code in **plotData.m** displays a figure shown below. According to the figure, there is a non-linear decison boundary. 
 ```
function plotData(X, y)
pos = find(y==1);
neg = find(y==0);
plot(X(pos,1),X(pos,2),'k+','LineWidth',2,'MarkerSize',7);
plot(X(neg,1),X(neg,2),'ko','MarkerFaceColor','y','MarkerSize',7);
```

![](https://user-images.githubusercontent.com/26426412/31314063-25ff72c8-abab-11e7-9743-e8a90126515d.png)

* **Feature mapping:**

Feature mapping is one technique that can help fit the data better by creating more features from each data point. As shown in the function below in mapFeature.m, it maps features into all polynomials terms of x1, x2 up to sixth power. A logistic regression classifier with feature mapping creates a more non-linear decision boundary and thus fit the data better.
```
function out = mapFeature(X1, X2)
%   MAPFEATURE(X1, X2) maps the two input features
%   to quadratic features used in the regularization exercise.
%   Returns a new feature array with more features, comprising of 
%   X1, X2, X1.^2, X2.^2, X1*X2, X1*X2.^2, etc..

degree = 6;
out = ones(size(X1(:,1)));
for i = 1:degree
    for j = 0:i
        out(:, end+1) = (X1.^(i-j)).*(X2.^j);
    end
end

end
```

* **Cost function and gradient descent:**

The regularized cost function in logistic regression is shown below. The second term is the regularization parameter. Regularization prevents overfitting induced by feature mapping.
![](https://user-images.githubusercontent.com/26426412/31359384-a244d842-acfe-11e7-860d-0aac7d8029e8.png)

The gradient of cost function is shown below. 
![](https://user-images.githubusercontent.com/26426412/31359520-28c76718-acff-11e7-8c72-656f67e827d7.png)
![](https://user-images.githubusercontent.com/26426412/31359548-428cf816-acff-11e7-91f8-54d97b286a44.png)

The code that implements cost function is in **costFunctionReg.m**.

```
function [J, grad] = costFunctionReg(theta, X, y, lambda)
% Initialize some useful values
m = length(y); % number of training examples
J = 0;
grad = zeros(size(theta));

for i = 1:length(grad)
   if i ==1
      grad(i) = 1/m*((sigmoid(X*theta)-y)'* X(:,i));
   else
      grad(i) = 1/m*((sigmoid(X*theta)-y)'* X(:,i))+ lambda/m*theta(i);
end

thetaj = theta(2:length(theta));
J = 1/m * ( -transpose(y)*log(sigmoid(X*theta)) - transpose(1-y)*log(1- sigmoid(X*theta)))+ lambda/(2*m)*thetaj'*thetaj;

end
```
The code uses **fminunc** to learn the optimal parameter theta. 

* **Plotting the decision boundary:**


Plotting the decision boundary helps visualize the model learned by the classifier. The decision boundary separates positive and negative samples. The file plotDecisionBoundary.m plots the decision boundary by first computing predictions and then drawing a contour plot of where predictions change from y=0 to y=1. The figure shown below displays decision boundary where lambda = 1.

![](https://user-images.githubusercontent.com/26426412/31360122-cab9c06e-ad01-11e7-9b11-a7178a043b0a.png)

## Reference
Ng, A. (n.d.). *Programming Exercise 2: Logistic Regression* [PDF].


