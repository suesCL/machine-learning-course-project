# K-means Clustering 

## Problem Statement 
Apply K-means clustering algorithm to compress an image. "K-means clustering is a method to automatically cluster similar data examples. 
It is an iterative procedure that starts by guessing the initial centroids and refines the guess by repeatedly assigning examples to 
their closest centroids and recomputes the centroids based on the assignment." In practice, K-means algorithm gives different results due to different
random initialization. The solution is to choose the one with the lowest cost function value. 

## Procedure
* Find the closest centroids:


Loop over every training example and every centroid and calculate the distance between the training example and centroid. Create an array of idx which 
contains the index of closest centroid to every training example. 

* Computing centroid means 


Recompute, for each centroid, the mean of the points that were assgined to it. 


## Application to image compression
The provided image has thousands of colors. Each color is a three 8-bit unsigned integers that 
represent red, green and blue intensity values. The exercise reduces the number of colors to 16. 
The training example is each pixel in the original image represented by a vector of three elements. An training example (50,30,2) means the blue
intesity of the pixel at location(50,30) is 2. The training procedure is shown here:
1) Load the image and reshape it to create an m*3 matrix of pixel colors
2) Run K-means method on the data
3) After finding the K = 16 colors, assign each pixel position to its closest centroid. 
