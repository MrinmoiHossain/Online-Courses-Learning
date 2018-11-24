import numpy as np

# Write a function that takes as input a list of numbers, and returns
# the list of values given by the softmax function.
def softmax(L):
    expL = np.exp(L)
    sumExpL = sum(expL)

    results = []
    for i in expL:
        results.append(1.0*i/sumExpL)

    return results

# Note: The function np.divide can also be used here, as follows:
# def softmax(L):
#     expL = np.exp(L)
#     return np.divide (expL, expL.sum())
