using Random
using BenchmarkTools
function srav()
    a = []
    for i in 1:999999
        push!(a, rand())
    end
    a2 = a
    a3 = a
    @btime sort!(a)
    @btime mergesort!(a2)
    @btime mergesort1!(a3)
end