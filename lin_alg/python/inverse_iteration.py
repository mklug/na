# Inverse iteration using numpy.
import numpy as np

# mu is the guess of the eigenvalue.
def inverse_iteration(A, mu, num_iterations):
    m = np.shape(A)[0]
    v0 = np.random.rand(m)
    v0 /= np.linalg.norm(v0)
    for _ in range(num_iterations):
        v0 = np.linalg.solve(A - mu*np.eye(m), v0)
        v0 /= np.linalg.norm(v0)
        lmbda = np.dot(v0.T, np.dot(A, v0))
    return lmbda, v0

# Alternatively, just call the power_iteraton function.
from power_iteration import power_iteration
def inv_iter(A, mu, num_iterations):
    m = np.shape(A)[0]
    B = np.linalg.inv(A - mu * np.eye(m))
    _,ev = power_iteration(B, num_iterations)
    return np.dot(ev.T, np.dot(A, ev)), ev

A = np.array([[1,-2,3],[-4,5.234,6],[2.123,8,9]])

ews,evs = np.linalg.eig(A)
mu = ews[1] + 0.1234
num_iterations = 1000
ew,ev = inverse_iteration(A, mu, num_iterations)
#ew0, ev0 = inv_iter(A, mu, num_iterations)

### Run the following in the interpreter:
#
# with open('inverse_iteration.py') as f:
#      exec(f.read())
