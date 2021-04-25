function shellsort!(a::Vector{Int64})
    n = length(a)
    distseries = (n ÷ 2^i for i in 1:Int(floor(log2(n))))
    for d in distseries
        for i in firstindex(a):lastindex(a) - d
            j = i
            while j >= firstindex(a) && a[j] > a[j+d]
                a[j], a[j+d] = a[j+d], a[j]
                j -= d
            end
        end
    end
    return a
end