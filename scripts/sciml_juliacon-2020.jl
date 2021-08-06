using DifferentialEquations, Plots

function lotka_volterra!(du,u,p,t)
    🐰,🐺 = u
    α,β,γ,δ = p
    du[1] = d🐰 = α*🐰 - β*🐰*🐺
    du[2] = d🐺 = γ*🐰*🐺 - δ*🐺
end

u₀ = [1.,1.]
tspan = (0.0,10.0)
p = [1.5,1.0,3.0,1.0]
prob = ODEProblem(lotka_volterra!,u₀,tspan,p)

sol = solve(prob)



# u′ = f(u)
# u(0) = u₀