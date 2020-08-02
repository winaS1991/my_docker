#!/usr/bin/env python
# coding: utf-8

import numpy as np

x = np.random.normal(5.0, 1.0, 100)
print(x)

import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

plt.figure()
plt.hist(x, bins=10, color="red")
plt.savefig("matplotlib_test.png")

from sklearn import linear_model
reg = linear_model.LinearRegression()
reg.fit([[0, 0], [1, 1], [2, 2]], [0, 1, 2])
print(reg.coef_)
