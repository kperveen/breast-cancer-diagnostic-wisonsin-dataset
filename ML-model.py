import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from sklearn.preprocessing import LabelEncoder
from sklearn.model_selection import train_test_split


dataset = pd.read_csv('/Users/meharshahani/Downloads/data.csv')
X = dataset.iloc[:, 1:31].values
Y = dataset.iloc[:, 31].values

dataset.head()

# finding the dimension of the data
print("Cancer data set dimensions : {}".format(dataset.shape))

# finding missing or null data
dataset.isnull().sum()
dataset.isna().sum()

#encoding data values
labelencoder_Y = LabelEncoder()
Y = labelencoder_Y.fit_transform(Y)
print(Y)


#splitting dataset into training and test set
X_train, X_test, Y_train, Y_test = train_test_split(X, Y, test_size=0.25, random_state=0)
print(X_train)
print(X_test)
print(Y_train)
print(Y_test)
