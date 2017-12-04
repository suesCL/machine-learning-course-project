# Anomaly and Recommendation Systems 

## Anomaly detection

## Recommendation Systems
Recommendation system utilizes a collaborative filtering to predict movie ratings for movies that users have not rated. 

### Movie ratings dataset 
X and Theta are input parameters where i-th row of X corresponds to a feature vector x^(i) for the i-th movie and the j-th row of theta corresponds to one parameter vector for the j-th user.
![image](https://user-images.githubusercontent.com/26426412/33538982-f9010142-d878-11e7-974f-7eb3b7145abc.png)

### Collaborative filtering learning algorithm
The model predicts the rating for movie i by user j as shown in ![image](https://user-images.githubusercontent.com/26426412/33539163-cd55c360-d879-11e7-9bd4-0d055e94feb7.png).

* Cost Function:
The collaborative filtering cost function is given by
![image](https://user-images.githubusercontent.com/26426412/33539451-5547a634-d87b-11e7-9fcc-671873796e74.png)

* Gradient 
The collaborative filtering gradient is made of X_grad and Theta_grad. X_grad is a matrix of the same size as X and Theta_grad 
has the same size as Theta. ![image](https://user-images.githubusercontent.com/26426412/33539686-908333ca-d87c-11e7-8b44-04a09b922492.png)

