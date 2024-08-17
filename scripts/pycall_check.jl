using Pkg
Pkg.add("PyCall")
using PyCall
println(PyCall.python)
pyimport("subprocess").check_call(["python", "-m", "pip", "list"])
