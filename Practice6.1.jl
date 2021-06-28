function Merge_1(x, y)
    z = promote_type(eltype(x), eltype(y))[]
    for i in x
        append!(z, i)
    end
    for i in y
        append!(z, i)
    end
    return z
end

function Merge_2(x, y)
    z = Vector{promote_type(eltype(x), eltype(y))}(undef, length(x) + length(y))
    for i in 1:length(x) + length(y)
        if i <= length(x)
            z[i] = x[i]
        else
            z[i] = y[i - length(x)]
        end
    end
    return z
end

function merge!(x, y, z)
    for i in 1:length(x) + length(y)
        if i <= length(x)
            z[i] = x[i]
        else
            z[i] = y[i - length(x)]
        end
    end
    return z
end
