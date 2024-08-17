# # Geometry for Programmers
using Pkg
Pkg.add("SymPy")
#-
# ## Chapter 1 Getting started
#-
# ### 1.6 Meet SymPy, it will do your math for you
using SymPy
#-
@syms Va Vp
Vp - 2Va
#-
Va + Vp - 450
#-
solution = solve([
    Vp - 2Va, Va + Vp - 450
  ], (Va, Vp))
print(solution)
# #### P.10 Listing 1.1 Numeric solution in SymPy
using SymPy
@syms Va Vp
solution = solve([
    Vp - 2Va
    Va + Vp - 450
  ], (Va, Vp))
print(solution)
# #### Listing 1.2 Symbolic solution in SymPy
using SymPy
@syms Va Vp Vpx D t
solution = solve([
    Va * Vpx - Vp
    t * Va + t * Vp - D
  ], (Va, Vp))
# Can we use `print(pycode(solution))?`,
# or `print(latex(solution))` in Julia?
print(solution)
#-
# ## Chapter 2 Terminology and jargon
UInt16(50000) * UInt16(50000) == 0xf900
#-
parse(Int, "0xf900")
# For floating-point numbers, we may have `(a+b)+c != a+(b+c)`.
#-
# For complex numbers,
using SymPy
a = 0.5 + 1.5im
b = 1 + 0.5im
c = a + b
#-
Pkg.add("Plots")
using Plots;
gr();
plot([(0.5, 1.5), (1, 0.5), (1.5, 2.0)], st = :scatter)
#-
d = 0.5
e = d * c
#-
plot([(1.5, 2.0), (0.5, 0), (0.25, 0.75)], st = :scatter)
#-
# ### 2.1.3 Vectors
a = [0.5, 1.5]
plot([0, 0.5], [0.0, 1.5], arrow = true, color = :black, linewidth = 2, label = "")
