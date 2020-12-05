import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

from sklearn.metrics import accuracy_score, confusion_matrix

from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier
from sklearn.svm import SVC
from sklearn.naive_bayes import GaussianNB
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier


dataset = pd.read_csv('./data.csv')

print(dataset.head(2))
dataset.diagnosis = dataset.diagnosis.replace(['M', 'B'], [0, 1])

print("Cancer data set dimensions : {}".format(dataset.shape))


Y = dataset.diagnosis
X = dataset.drop(columns = ['diagnosis', 'id'])

#splitting dataset into training and test set
X_train, X_test, Y_train, Y_test = train_test_split(X, Y, test_size=0.25, random_state=0, shuffle=True)

classifier = LogisticRegression(solver='liblinear', max_iter=100)
model_lr = classifier.fit(X_train.to_numpy(), Y_train.to_numpy())

Y_pred = pd.Series(model_lr.predict(X_test))

model1_accuracy = accuracy_score(Y_test, Y_pred)
print('Accuarcy of Logistic Regression {}'.format(model1_accuracy))


#Using KNeighborsClassifier Method of neighbors class to use Nearest Neighbor algorithm
classifier = KNeighborsClassifier(n_neighbors = 5, metric = 'minkowski', p = 2)
model_knn = classifier.fit(X_train, Y_train)
Y_pred = pd.Series(model_knn.predict(X_test))

modelknn_accuracy = accuracy_score(Y_test, Y_pred)
print('Accuarcy of KNN {}'.format(modelknn_accuracy))
#
# #Using SVC method of svm class to use Support Vector Machine Algorithm
classifier = SVC(kernel = 'linear', random_state = 0)
model_Svc = classifier.fit(X_train, Y_train)

Y_pred = pd.Series(model_Svc.predict(X_test))

modelsvc_accuracy = accuracy_score(Y_test, Y_pred)
print('Accuarcy of SVC {}'.format(modelsvc_accuracy))

# #Using GaussianNB method of naïve_bayes class to use Naïve Bayes Algorithm
classifier = GaussianNB()
model_NB = classifier.fit(X_train, Y_train)
Y_pred = pd.Series(model_NB.predict(X_test))

modelnb_accuracy = accuracy_score(Y_test, Y_pred)
print('Accuarcy of Naive Bayes {}'.format(modelnb_accuracy))
#
# #Using DecisionTreeClassifier of tree class to use Decision Tree Algorithm
classifier = DecisionTreeClassifier(criterion = 'entropy', random_state = 0)
model_dt = classifier.fit(X_train, Y_train)

Y_pred = pd.Series(model_dt.predict(X_test))

modeldt_accuracy = accuracy_score(Y_test, Y_pred)
print('Accuarcy of Decision Tree {}'.format(modeldt_accuracy))
#
#
# #Using RandomForestClassifier method of ensemble class to use Random Forest Classification algorithm
classifier = RandomForestClassifier(n_estimators = 10, criterion = 'entropy', random_state = 0)
model_rf = classifier.fit(X_train, Y_train)
Y_pred = pd.Series(model_rf.predict(X_test))

modelrf_accuracy = accuracy_score(Y_test, Y_pred)
print('Accuarcy of Naive Bayes {}'.format(modelrf_accuracy))

cm = confusion_matrix(Y_test, Y_pred)
print(cm)
