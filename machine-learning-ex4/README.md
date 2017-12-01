# Neural Neural Network for Hand-written Digits Recognition

## Overview 
* Regularized cost function
* Backpropagation
  * Sigmoid gradient 
  * Random initialization
  * Backpropagation
* Visualizing the hidden layer 

## Regularized Cost Function 
* **Training dataset representation:**

There are 5000 training samples which are 20 pixels * 20 pixels grayscale images. Each of the sample is represented by a 400-dimensional vector. Each sample is a single row in data marix X. 

![image](https://user-images.githubusercontent.com/26426412/31362424-4ad02dbe-ad0d-11e7-8ba9-387849c3dc27.png)

Variable y contains the labels for training set and is represented by a vector containing values 0 an 1.

![image](https://user-images.githubusercontent.com/26426412/31362570-0c96cf52-ad0e-11e7-90b4-c4a33fde49c3.png)

* **Regularized cost function:**

Cost function for neural network without regularization is shown below. 

![image](https://user-images.githubusercontent.com/26426412/31362480-8e512c8c-ad0d-11e7-9ff8-a65a31125f4b.png)

K is the total number of possible lables. K equals to 10 in our case. m is the number of training samples.

## Backpropagation 
Backpropagation algorithm computes the gradient for the neural network cost function. With the gradient, the program can compute the model parameters using advanced optimizer fmincg by minimizing cost function J(theta). 

* **Step One: Random Initialization**
Randomly initialize parameters theta is to break symmetry. The program randomly selected values for theta uniformly in [-0.12, 0.12].

* **Step Two: Backpropagation**

![image](https://user-images.githubusercontent.com/26426412/33496897-c62a3832-d680-11e7-9dfc-3781185fab4f.png)

The backpropagation follows the process below.
1) Given the training examle, run a forwardpropagation to compute activators a and output valie h(x). 
2) For each node j in layer l, compute error term ![image](https://user-images.githubusercontent.com/26426412/33497101-873eaee0-d681-11e7-89b8-9a71c78dad45.png). Error term measures how much error that node contributes for the errors in output. 
The error term of output layer is the difference between activator and true value. The error term
in hidden layers is measured based on weighted average of error terms of the nodes from layer (l+1). Because each layer is calculated  from next layer, we describe the process backpropagation.
3) Calculate the accumulated gradient of each layer as followed. 
![image](https://user-images.githubusercontent.com/26426412/33497372-985997ac-d682-11e7-89c0-2a9fc8cf7bfb.png)
4) Obtain unregularized gradient for cost function by dividing the accumulated gradient by m.
![image](https://user-images.githubusercontent.com/26426412/33497599-54e5f000-d683-11e7-8422-e31ea0a5df5e.png)

* **Step Three: Gradient checking**
Gradient checking validates the correctness of backpropagation implementation. Gradient checking compares the numerically cacluated gradient with backpropagation calculated gradient.
![image](https://user-images.githubusercontent.com/26426412/33497865-3b3ff2b2-d684-11e7-8097-692aac5b3dd5.png)




* **Sigmoid gradient:**
