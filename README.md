# PhasetrJulia

my Julia memo, mainly Japanese

## Official

- <https://julialang.org>

## ワークフロー

- 公式：[ワークフローのヒント](https://docs.julialang.org/en/v1/manual/workflow-tips/#man-workflow-tips)
- `workflow`ディレクトリ参照
- `REPL`ベース・ブラウザベース・`Revise`ベースがある
- `Revise`ベースは`REPL`ベースでも重要

### `Revise`導入

- [参考：公式](https://timholy.github.io/Revise.jl/stable/)
- `Revise`が自動起動するように`.julia/config/startup.jl`と`.julia/config/startup_ijulia.jl`に` using Revise`を入れるとよい.
- さらに詳しくは[Using Revise by default](https://timholy.github.io/Revise.jl/stable/config/#Using-Revise-by-default)参照

```julia
# In REPL
using Pkg; Pkg.add("Revise")
```

## For Study

### JuliaStats

- <https://juliastats.org/>
- <https://github.com/JuliaStats>

```sh
git clone git@github.com:JuliaStats/StatsBase.jl
git clone git@github.com:JuliaStats/StatsModels.jl
git clone git@github.com:JuliaData/DataFrames.jl.git
git clone git@github.com:JuliaStats/Distributions.jl
git clone git@github.com:JuliaStats/MultivariateStats.jl
git clone git@github.com:JuliaStats/HypothesisTests.jl
git clone git@github.com:JuliaStats/MLBase.jl
git clone git@github.com:JuliaStats/Distances.jl
git clone git@github.com:JuliaStats/KernelDensity.jl
git clone git@github.com:JuliaStats/Clustering.jl
git clone git@github.com:JuliaStats/GLM.jl
git clone git@github.com:JuliaStats/NMF.jl
git clone git@github.com:JuliaStats/RegEMRs.jl
git clone git@github.com:JuliaStats/TimeSeries.jl
git clone git@github.com:JuliaStats/LogExpFunctions.jl
git clone git@github.com:JuliaStats/MixedModels.jl
git clone git@github.com:JuliaStats/PDMats.jl
git clone git@github.com:JuliaStats/StatsAPI.jl
git clone git@github.com:JuliaStats/StatsFuns.jl
git clone git@github.com:JuliaStats/Survival.jl
git clone git@github.com:JuliaStats/ConjugatePriors.jl
git clone git@github.com:JuliaStats/RDatasets.jl
git clone git@github.com:JuliaStats/Loess.jl
git clone git@github.com:JuliaStats/Lasso.jl
git clone git@github.com:JuliaStats/GLMNet.jl
git clone git@github.com:JuliaStats/Rmath-julia
git clone git@github.com:JuliaStats/StatsKit.jl
git clone git@github.com:JuliaStats/Rmath.jl
git clone git@github.com:JuliaStats/TimeModels.jl
git clone git@github.com:JuliaStats/RmathDist.jl
git clone git@github.com:JuliaStats/PGM.jl
git clone git@github.com:JuliaStats/RmathBuilder
```

### Plots

- <https://docs.juliaplots.org/stable/>
- <https://github.com/JuliaPlots>

```sh
git clone git@github.com:JuliaPlots/Plots.jl.git
```

