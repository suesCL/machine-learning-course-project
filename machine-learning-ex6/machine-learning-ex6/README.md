# Spam Filter with Support Vector Machine 

## Overview:
* SVM with Gaussian Kernels 
* Spam Classification


## SVM with Gaussian Kernels
SVM with Gaussian Kernel applies well to non-linear classification. Gaussian kernel measures the distance between a pair of examples. Gaussian kernel
has a bandwidth parameter **sigma** which determines the rate at which similarity metric decreases as the pair of examples are further apart.
![image](https://user-images.githubusercontent.com/26426412/33528682-39d07a5a-d819-11e7-8f52-f6b8057622bf.png)


## Spam Classification
### Preprocessing Emails 
* Normalization
Preprocessing makes it easier to perform feature extraction on emails.
One method to preprocess emails is to perform normalization which is to treat all URLs, numbers the same. Here are the normalization steps:
  1) Lower-casing
  2) Stripping HTML
  3) Normalize URLS, email addresses and numbers and dollar signs
  4) Word Stemming
  5) Removal of non-words trimmed to a single space characters

* Vocabulary list


The vocabulary list chose all words that occur at least 100 times in the spam corpus. Some words are left out the vocabulary lsit because 
they are rarely used and can overfit the model. Given the vocabulary list, we can replace each word in the email with a corresponding number as shown
in file **processEmail.m**. 

### Feature Extraction 
Feature extraction converts each email into a vector in a n-dimensional vector space. n is the total number of words in vocabulary list. 
The ith element in the vector corresponds to whether the email contains the i-th element in the vocabulary list. Each email has a feature
vector shown below. 

![image](https://user-images.githubusercontent.com/26426412/33528859-ebab8064-d81c-11e7-9ce9-b5b742dc497d.png)

### Training SVM for spam classification
Loading the dataset into SVM training model, calculates the training accuracy and test accuracy as shown in file **ex6_spam.m**.


# References:
Ng, A. (n.d.). Programming Exercise 6: Support Vector Machines [PDF].
