# Rayleigh quotient iteration using numpy.
import numpy as np

def rayleigh_quotient_iteration(A, num_iterations):
    m = A.shape[1]
    v0 = np.random.rand(m)
    v0 /= np.linalg.norm(v0)
    lmbda = np.dot(v0.T, np.dot(A, v0))
    for _ in range(num_iterations):
        v0 = np.linalg.solve(A-lmbda*np.eye(m), v0)
        v0 /= np.linalg.norm(v0)
        lmbda = np.dot(v0.T, np.dot(A, v0))
    return lmbda, v0

A = np.array([[2,1,1],[1,3,1],[1,1,4]])
num_iterations = 5
ews,evs = np.linalg.eig(A)
ew,ev = rayleigh_quotient_iteration(A, num_iterations)

### Run the following in the interpreter:
#
# with open('rayleigh_quotient_iteration.py') as f:
#      exec(f.read())
