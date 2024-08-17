# # 文字列
x = "XYZ"
a = "x: $(x)"
# # SymPy
# [JuliaHub](https://docs.juliahub.com/SymPy/KzewI/1.0.29/Tutorial/intro/)
using SymPy
sympy.sqrt(3)
#-
sqrt(Sym(3))
#-
sympy.sqrt(8)
#-
@syms x y
expr = x + 2y
#-
@syms x y
expr = x + 2y
expanded_expr = expand(x * expr)
expanded_expr
#-
factor(expanded_expr)
#-
x, t, z, nu = symbols("x t z nu")
diff(sin(x) * exp(x), x)
#-
integrate(exp(x) * sin(x) + exp(x) * cos(x), x)
#-
integrate(sin(x^2), (x, -oo, oo))
#-
limit(sin(x) / x, x, 0)
#-
solve(x^2 - 2, x)
#-
y = sympy.Function("y")
dsolve(Eq(y(t).diff(t, t) - y(t), exp(t)), y(t)) |> string # work around formatting issue
#-
y = SymFunction("y")
dsolve(y''(t) - y(t) - exp(t), y(t)) |> string
#-
out = sympy.Matrix([1 2; 2 2]).eigenvals();
sort(collect(keys(out)))
#-
using SpecialFunctions
@syms ν z
besselj(ν, z).rewrite(sympy.jn)
#-
sympy.latex(sympy.Integral(cos(x)^2, (x, 0, PI)))
# ## Complex numbers
# ### Imaginary unit
using SymPy
0.5 + 1.5im
#-
# # Plots
#-
#using Pkg
#Pkg.add("SymPy")
#Pkg.add("Plots")
#-
using Plots
gr()
plot(cos(t), sin(t), 0, 2 * pi, aspect_ratio = :equal)
#-
plot(cos(t), 4 * sin(t), 0, 2 * pi, aspect_ratio = :equal)
#-
plot(t^2, 2 * t, -3, 3, aspect_ratio = :equal)
#-
plot(cosh(t), sinh(t), -2, 2, aspect_ratio = :equal)
plot!(-cosh(t), sinh(t), -2, 2, aspect_ratio = :equal)
#-
plot(exp(t / 10) * cos(t), exp(t / 10) * sin(t), 0, 20, aspect_ratio = :equal)
#-
plot(cos(t), sin(t), t, 0, 8 * pi,
  size = (800, 600),
  xlabel = "x", ylabel = "y", zlabel = "z")
#-
plot(randn(50, 5), st = :scatter)
#-
using Plots
gr()
x = [1, 3, NaN, 0.5, 1.0]
y = [1, 0.4, NaN, 1.5, 0.8]
GR.setarrowsize(1)
plot(x, y, marker = :circle, arrow = (:closed, 2.0))
#-
N = 10
x = rand(1:10, N)
y = rand(1:10, N)
u = rand(N)
v = rand(N)
scatter(x, y)
quiver!(x, y, quiver = (u, v))
