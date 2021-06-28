function merg(x, y)
    z = promote_type(eltype(x),eltype(y))[]
    for i in x
        append!(z, i)
    end
    for i in y
        append!(z, i)
    end
    return z
end

function part_sort_x2(x, y)
    x1 = Vector{eltype(x)}(undef, length(x))
    x2 = Vector{eltype(x)}(undef, length(x))
    x3 = Vector{eltype(x)}(undef, length(x))
    k = [1,1,1]
    for i in 1:length(x)
        if (x[i] < y)
            x1[k[1]] = x[i]
            k[1] = k[1] + 1
        elseif (x[i] == y)
            x2[k[2]] = x[i]
            k[2] = k[2] + 1
        else
            x3[k[3]] = x[i]
            k[3] = k[3] + 1
        end
    end
    return merg(merg(x1[1:k[1] - 1], x2[1:k[2] - 1]), x3[1:k[3] - 1])
end
function part_sort_x1(x, y)
    x1 = eltype(x)[]
    x2 = eltype(x)[]
    x3 = eltype(x)[]
    for i in a
        if (i < y)
            push!(x1, i)
        elseif (i == y)
            push!(x2, i)
        else
            push!(x3, i)
        end
    end
    return merg(merg(x1, x2), x3)
end

function part_sort_y(x, y)
    l = 0
    m = 0
    k = 0
    for i in 1:length(x)
        if (x[i] < y)
            l += 1
            m += 1
            k += 1
            x[l], x[i] = x[i], x[l]
        elseif (x[i] == y)
            m += 1
            k += 1
            x[m], x[i] = x[i], x[m]
        else
            k += 1
            x[k], x[i] = x[i], x[k]
        end
    end
    return x
end