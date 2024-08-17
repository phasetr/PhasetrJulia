# # Part I Fundamental concepts
#-
# ## 2 Introduction to quantum mechanics
#-
# ### Exercise 2.1
using LinearAlgebra
x = [1;-1]
y = [1;2]
z = [2;1]
println(x+y-z)
#-
# ### Exercise 2.2
#-
# ### Exercise 2.27
using LinearAlgebra
XZ = [
  0  0 1  0
  0  0 0 -1
  1  0 0  0
  0 -1 0  0
]
IdX = [
  0 1 0 0
  1 0 0 0
  0 0 0 1
  0 0 1 0
]
XId = [
  0 0 1 0
  0 0 0 1
  1 0 0 0
  0 1 0 0
]
XZ * IdX
IdX * XZ
XZ * XId
XId * XZ
IdX * XId
#-
# ### Exercise 2.50
A = [
  1 0
  1 1
]
B = A'
A'*A
#-
using LinearAlgebra
e,u = eigen(A'*A)
#-
A*A'
