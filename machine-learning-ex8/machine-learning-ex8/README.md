# Anomaly and Recommendation Systems 

## Anomaly detection
The project implements an anomaly detection algorithm to detect anomalous behavior in server computers. I use Gaussian model to detect anomaly. To perform anomaly detection:

* Fit a gaussian model:
First estimate the parameters ![image](https://user-images.githubusercontent.com/26426412/33541243-3f1b0b1e-d883-11e7-9da6-a2a35b695dec.png). ![image](https://user-images.githubusercontent.com/26426412/33541203-15e05484-d883-11e7-921d-ed10d4dab8c3.png)

* Select the threshold
The lower probability examples are more likely to be anomalies. To determine the anomaly needs to select a threshold based on a
cross validation set ![image](https://user-images.githubusercontent.com/26426412/33541548-642f3da2-d884-11e7-8642-df9961ae3353.png)
The **selectThreshold.m** will return the selected threshold and F1 score which indicates how well the model is at finding the anomalies given a certain threshold. 

## Recommendation Systems
Recommendation system utilizes a collaborative filtering to predict movie ratings for movies that users have not rated. "Collaborative filtering makes automatic predictions (filtering) about the interests of a user by collecting preferences information from many users (collaborating)."

### Movie ratings dataset 
The input data is matrix Y which stores the ratings 1 to 5 with each element a rating from a user on a movie. The matrix R is a binary valued indicator matrix where R(i,j) = 1 means user j gives a rating on movie i and R(i,j) = 0 means user j gives no rating on movie i. 
The purpose of collaborative filtering is to predict rating where R(i,j) = 0.

X and Theta are the parameters to be learned. The i-th row of X corresponds to a feature vector x^(i) for the i-th movie and the j-th row of theta corresponds to one parameter vector for the j-th user. Both x^i and Θ^j are n-dimensional vectors. 
![image](https://user-images.githubusercontent.com/26426412/33538982-f9010142-d878-11e7-974f-7eb3b7145abc.png)

### Collaborative filtering learning algorithm
The model predicts the rating for movie i by user j as shown in ![image](https://user-images.githubusercontent.com/26426412/33539163-cd55c360-d879-11e7-9bd4-0d055e94feb7.png).

* Cost Function:


The collaborative filtering cost function is given by
![image](https://user-images.githubusercontent.com/26426412/33539451-5547a634-d87b-11e7-9fcc-671873796e74.png)

* Gradient:


The collaborative filtering gradient is made of X_grad and Theta_grad. X_grad is a matrix of the same size as X and Theta_grad 
has the same size as Theta. 

![image](https://user-images.githubusercontent.com/26426412/33539686-908333ca-d87c-11e7-8b44-04a09b922492.png)

## References 
