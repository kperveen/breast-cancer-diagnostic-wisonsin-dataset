import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from pandas import DataFrame
from sklearn import preprocessing
from sklearn.preprocessing import LabelEncoder
from sklearn.preprocessing import StandardScaler
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier
from sklearn.neighbors import KNeighborsClassifier
from sklearn.svm import SVC
from sklearn.naive_bayes import GaussianNB
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import confusion_matrix


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

#using logistic regression algo on the training set
X_train = X_train.astype(int)
print("X_train: ", X_train)

Y_train = Y_train.astype(int)
print("Y_train: ", Y_train)
classifier = LogisticRegression(random_state = 0)
for i in Y_train:
    if i != 0:
        classifier.fit(X_train, Y_train)    
        break
print("All in one class LR")


#Using KNeighborsClassifier Method of neighbors class to use Nearest Neighbor algorithm
classifier = KNeighborsClassifier(n_neighbors = 5, metric = 'minkowski', p = 2)
classifier.fit(X_train, Y_train)

#Using SVC method of svm class to use Support Vector Machine Algorithm
classifier = SVC(kernel = 'linear', random_state = 0)
for i in Y_train:
    if i != 0:
        classifier.fit(X_train, Y_train)    
        break
print("All in one class SVM")

#Using SVC method of svm class to use Kernel SVM Algorithm
classifier = SVC(kernel = 'rbf', random_state = 0)
for i in Y_train:
    if i != 0:
        classifier.fit(X_train, Y_train)    
        break
print("All in one class Kernel SVM")

#Using GaussianNB method of naïve_bayes class to use Naïve Bayes Algorithm
classifier = GaussianNB()
classifier.fit(X_train, Y_train)
        
#Using DecisionTreeClassifier of tree class to use Decision Tree Algorithm
classifier = DecisionTreeClassifier(criterion = 'entropy', random_state = 0)
classifier.fit(X_train, Y_train)


#Using RandomForestClassifier method of ensemble class to use Random Forest Classification algorithm
classifier = RandomForestClassifier(n_estimators = 10, criterion = 'entropy', random_state = 0)
classifier.fit(X_train, Y_train)

Y_pred = classifier.predict(X_test)
print(Y_pred)
print(Y_test)

cm = confusion_matrix(Y_test, Y_pred)
print(cm)
