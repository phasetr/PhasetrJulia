# # いろいろな計算
# ## expedition05214
#-
using LinearAlgebra
a = [2; 4; 3]
b = [5; 9; 7]

norma = norm(a)
sqrt(29)

normb = norm(b)
sqrt(155)

dotab = dot(a, b)
costheta = dot(a, b) / (norm(a) * norm(b))
theta = acos(costheta)
costheta_ = cos(theta)

println([norma, normb, dotab, costheta, theta])
#-
# ## expedition05333
#-
using LinearAlgebra
A = [0 1; -1 0]
B = [0 1; 1 0]
A
#-
B
#-
println("A B")
A * B
#-
println("A^2 B")
A^2 * B
#-
println("A^3 B")
A^3 * B
#-
println("B A")
B * A
#-
println("B A^2")
B * A^2
#-
println("B A^3")
B * A^3
#-
# ## expedition05342
using SymPy
A = Matrix([1 0; 0 2])
B = Matrix([0 2-im; -2+im 0])
A * B
#-
B * A
#-
# ## expedition05357
using SymPy
@syms τ x1 x2 x3 x4 x5 x6 x7 x8
λ1 = Matrix([0 1 0; 1 0 0; 0 0 0])
λ2 = Matrix([0 -im 0; im 0 0; 0 0 0])
λ3 = Matrix([1 0 0; 0 -1 0; 0 0 0])
λ4 = Matrix([0 0 1; 0 0 0; 1 0 0])
λ5 = Matrix([0 0 -im; 0 0 0; im 0 0])
λ6 = Matrix([0 0 0; 0 0 1; 0 1 0])
λ7 = Matrix([0 0 0; 0 0 -im; 0 im 0])
λ8 = Matrix([1 0 0; 0 1 0; 0 0 -2]) / sympy.sqrt(3)
umat = Matrix([1 0 0; 0 1 0; 0 0 1])
A = (τ * umat + sympy.sqrt(3) * (x1 * λ1 + x2 * λ2 + x3 * λ3 + x4 * λ4 + x5 * λ5 + x6 * λ6 + x7 * λ7 + x8 * λ8)) / 3
Adet = A.det()
mysimp(expr) = factor(simplify(expr))
println(sympy.latex(mysimp(Adet)))
println(sympy.latex(factor(simplify(Adet))))
#-
# ## expedition05360
using SymPy
@syms u11 u12 u13 u21 u22 u23 u31 u32 u33
U = Matrix([
  u11 u12 u13
  u21 u22 u23
  u31 u32 u33
])
#-
V = Matrix([
  u11 conjugate(u21)
  u21 -conjugate(u11)
])
Vc = Matrix([
  conjugate(u11) conjugate(u21)
  u21 -u11
])
V * Vc
#-
U12_ = Matrix([
  u11 conjugate(u21) 0
  u21 -u11 0
  0 0 sqrt(abs(u11)^2 + abs(u21)^2)
])
U12 = U12_ / sqrt(abs(u11)^2 + abs(u21)^2)
#simplify(U12 * conjugate(U12'))
#-
prod = U12_ * U
println(sympy.latex(simplify(prod)))
#-
U = Matrix([
  u11 u12 u13
  0 u22 u23
  u31 u32 u33
])
U13_ = Matrix([
  u11 0 conjugate(u31)
  0 sqrt(abs(u11)^2 + abs(u31)^2) 0
  u31 0 -u11
])
println(sympy.latex(simplify(U13_ * U)))
#-
# ## カシミール元 expedition05361
# ### 特殊線型リー環

e = [0 1; 0 0]
f = [0 0; 1 0]
h = [1 0; 0 -1]
commprod(A, B) = A * B - B * A
#-
commprod(e, f)
#-
commprod(h,f)
#-
commprod(h,e)
#-
Ω = e*f + f*e + h^2//2
