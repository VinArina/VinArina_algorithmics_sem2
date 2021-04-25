function sum(a)
    s = 0
    for x in a
        s += x
    end
    return s
end

function zeros(a)
    s = 0
    for x in a
        if x == 0
            s += 1
        end
    end
    return s
end

function sort_stolb_neub_summ(N)
    vector_colons = [@view N[:, j] for j in 1:size(N, 2)]
    N = hcat(sortkey(sum, vector_colons))
    return N
end
function sort_stolb_neub_zeros(N)
    vector_colons = [@view N[:, j] for j in 1:size(N, 2)]
    N = hcat(sortkey(zeros, vector_colons))
    return N
end