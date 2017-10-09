# Neural Neural Network Learning

## Overview 
* Regularized cost function
* Backpropagation
  * Sigmoid gradient 
  * Random initialization
  * 
* Visualizing the hidden layer 

## Regularized Cost Function 
* Training dataset representation: 
There are 5000 training samples which are 20 pixels * 20 pixels grayscale images. Each of the sample is represented by a 400-dimensional vector. Each sample is a single row in data marix X. 

![image](https://user-images.githubusercontent.com/26426412/31362570-0c96cf52-ad0e-11e7-90b4-c4a33fde49c3.png)

Variable y contains the labels for training set and is represented by a vector containing values 0 an 1. 

![image](https://user-images.githubusercontent.com/26426412/31362424-4ad02dbe-ad0d-11e7-8ba9-387849c3dc27.png)

* Regularized cost function: 
Cost function for neural network without regularization is shown below. 

![image](https://user-images.githubusercontent.com/26426412/31362480-8e512c8c-ad0d-11e7-9ff8-a65a31125f4b.png)

K is the total number of possible lables. K equals to 10 in our case. 


