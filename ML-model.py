import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from sklearn.preprocessing import LabelEncoder
from sklearn.model_selection import train_test_split


dataset = pd.read_csv('/Users/meharshahani/Downloads/data.csv')


X = dataset.iloc[:, 1:32].values
Y = dataset.iloc[:, 31].values
print("X is:", X)
print("Y is: ", Y)

# finding the dimension of the data
print("Cancer data set dimensions : {}".format(dataset.shape))

# finding missing or null data
#print(dataset.isnull().sum())
#print(dataset.isna().sum())

#encoding data values
diagnosis = dataset.diagnosis
print(diagnosis)
labelencoder_Y = LabelEncoder()
dataset['diagnosis'] = labelencoder_Y.fit_transform(dataset['diagnosis'])
new_df = dataset[diagnosis=='M']
print(new_df)

X_new = dataset.iloc[:, 1:32].values
Y_new = dataset.iloc[:, 31].values

#splitting dataset into training and test set
X_train, X_test, Y_train, Y_test = train_test_split(X_new, Y_new, test_size=0.25, random_state=0)
print("X_train: ", X_train)
print("X_test: ", X_test)
print("Y_train: ", Y_train)
print("Y_test: ", Y_test)
#Y_train and Y_test are NAN


#scaling the features
sc = StandardScaler()
X_train = sc.fit_transform(X_train)
X_test = sc.fit_transform(X_test)

print("X_train: ", X_train)
print("X_test: ", X_test)
