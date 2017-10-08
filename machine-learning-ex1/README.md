# Linear Regression 

# Overview
* Linear regression with one variable 
  * Plotting the data 
  * Gradient Descent
  * Visualizing cost function 
  
* Linear regression with multiple variables
  * Feature Normalization
  * Gradient Descent 
  * Normal Equations 

# Linear regression with single variables 
## Problems Statement 
Implement a linear regression with one variable to predict profits for a food truck. The food truck has data for profits and populations for variaous cities. The analysis help select which city to expand to next. 



## Implementation
### Plotting the Data
In the **ex1.m file**, `plotData` function creates a scatter plot of historic data as shown below. 

![plot](https://user-images.githubusercontent.com/26426412/31313686-a84ad5c2-ab9e-11e7-92fc-f631d4a24861.png)

### Gradient Descent 
The goal is to find the regression parameters theta that fits the dataset using gradient descient. 
The objective of linear regression is to minimize cost function: 

![equation](https://user-images.githubusercontent.com/26426412/31313740-c80672fc-aba0-11e7-98ab-2c88ac2ddb16.png)

The code implements the following steps.
1. Implement a function to calculate J(theta) in file **computeCost.m** 
2. Implement gradient descient by updating theta in each iteration in file **gradientDesceint.m**

The linear regression on the data is shown below. The linear regression captures training data's overall trend.

![](https://user-images.githubusercontent.com/26426412/31313780-0e2fd9b6-aba2-11e7-98b9-8c7402a15e6f.png)

### Visualizing J(theta) 
The plotting cost over a 2D grid of two linear regression parameters shows gradient descient process to minimize cost function. 

![](https://user-images.githubusercontent.com/26426412/31313797-ad651898-aba2-11e7-91f5-ccada265de32.png)

# Linear regression with multiple variables 
## Problems Statement 
Make a model of housing prices to predict market price. The training dataset contains housing prices in Portland, Oregon. The first column is the size of the house (in square feet), the second column is the number of bedrooms, and the third column is the price of the house.

## Implementation
### Feature Normalization
Because features(size of housr, number of bedrooms) differ by orders of magnitude, the code in **featureNormalize.m** performs a feature scaling. 
### Gradient Descient


## Installation 
