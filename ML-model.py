import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

dataset = pd.read_csv('data.csv')
X = dataset.iloc[:, 1:31].values
Y = dataset.iloc[:, 31].values

dataset.head()
print("Cancer data set dimensions : {}".format(dataset.shape))
