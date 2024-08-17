# # 佐藤肇、リー代数入門
# ## はじめに
# ```julia
# using Pkg
# Pkg.add("Symbolics")
# Pkg.add("SymPy")
# ````
# ## 問5.4
using SymPy
@vars a b p q r s t u v w x y
H = [
  0 0 0 0 0
  0 a 0 0 0
  0 0 b 0 0
  0 0 0 -a 0
  0 0 0 0 -b
]
X = [
  0 p q r s
  -r t u 0 x
  -s v w -x 0
  -p 0 y -t -v
  -q -y 0 -u -w
]
HX = H*X
XH = X*H
HX-XH
#-
# ## 問5.5
using SymPy
@vars a b p q r s t u v x y w
A = [
  a 0  0  0
  0 b  0  0
  0 0 -a  0
  0 0  0 -b
]
B = [
  p q  t  u
  r s  u  v
  w x -p -r
  x y -q -s
]
A*B
#-
B*A
#-
A*B - B*A
#-
