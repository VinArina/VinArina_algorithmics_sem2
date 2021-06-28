function binom_coef_a(n::Integer)::Vector{Int}
    s = Int[]
    for _ in 1:n
        s = vcat(1, s[1:end - 1] .+ s[2:end], 1)
    end
    return s
end

function binom_coef_b(n::Integer)::Vector{Int}
    s = Int[]
    for k in 1:n
        if (k == 1)
            append!(s, div((n - k + 1), k))
        else
            append!(s, div((n - k + 1) * s[k - 1], k))
        end
    end
    pushfirst!(s, 1)
    return s
end

function binom_coef_c(n::Integer)::Vector{Int}
    s = Int[]
    for k in 1:div(n, 2)
        if (k == 1)
            append!(s, div((n - k + 1), k))
        else
            append!(s, div((n - k +1 ) * s[k - 1], k))
        end
    end
    pushfirst!(s, 1)
    return s
end