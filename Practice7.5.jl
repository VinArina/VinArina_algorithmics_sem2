function eratosthen(n::Integer)
    a = fill(true, n)
    a[1] = false
    k = 2
    while (k < n) 
        for i = 2k:k:length(a)
            a[i] = false
        end
        k = findnext(a, k + 1)
        if isnothing(k)
            break
        end
    end
    return findall(a)
end