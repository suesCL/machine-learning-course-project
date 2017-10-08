# Logistic Regression for Classification 

## Overview 
* Regularized logistic regression 
  * Visualizing the data
  * Feature mapping 
  * Cost function and gradient descient 
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

Feature mapping is one technique that can help fit the data better by creating more features from each data point. As shown in the function below in **mapFeature.m**, it maps features into all polynomialls terms of x1, x2 up to sixth power.  
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
