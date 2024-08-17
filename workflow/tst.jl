include("ReplTmp.jl")
import .ReplTmp
# using .Tmp # we can use `using` to bring the exported symbols in `Tmp` into our namespace
# say_hello()

# say_hello
ReplTmp.say_hello()
# say_hello2
ReplTmp.say_hello2()
# say_hello3
ReplTmp.say_hello3()

# your other test code here
