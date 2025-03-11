# Power iteration using numpy.
import numpy as np

def power_iteration(A, num_iterations):
    v0 = np.random.rand(A.shape[1])
    v0 /= np.linalg.norm(v0)
    for _ in range(num_iterations):
        v0 = np.dot(A,v0)
        v0 /= np.linalg.norm(v0)
        lmbda = np.dot(v0.T, np.dot(A, v0))
    return v0, lmbda

A = np.array([[1,-2,3],[-4,5.234,6],[2.123,8,9]])
num_iterations = 5
ev,ew = power_iteration(A, num_iterations)

### Run the following in the interpreter:
#
# with open('power_iteration.py') as f:
#      exec(f.read())
