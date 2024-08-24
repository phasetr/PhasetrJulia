using Test
include("ReplTmp.jl")
import .ReplTmp
# using .Tmp # we can use `using` to bring the exported symbols in `Tmp` into our namespace
# say_hello()

@testset "1st test set" begin
    @testset "Inside 1st test set" begin
      @test 1 + 1 == 2
      @test_throws DomainError sqrt(-1)
  
      @test isapprox(0.1 + 0.2, 0.3)  # 浮動小数点数の比較
      @test [1, 2, 3] ≈ [1, 2, 3]     # 配列の比較  
    end

    @testset "Inside 2nd test set" begin
      @test ReplTmp.isodd(1) == true
      # say_hello
      ReplTmp.say_hello()
      # say_hello2
      ReplTmp.say_hello2()
      # say_hello3
      ReplTmp.say_hello3()

      @test ReplTmp.isodd(2) == false
      @test ReplTmp.isodd(3) == true
      # your other test code here
    end

    @testset "Parameterized test $i" for i in 1:3
      @test i < 4
    end
end
