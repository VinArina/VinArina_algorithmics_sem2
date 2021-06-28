function part_sort!(a, b)
    l = 0
    m = 0
    k = 0
    for i in 1:length(a)
        if (a[i] < b)
            l += 1
            m += 1
            k += 1
            a[l], a[i] = a[i], a[l]
        elseif (a[i] == b)
            m += 1
            k += 1
            a[m], a[i] = a[i], a[m]
        else
            k += 1
            a[k], a[i] = a[i], a[k]
        end
    end
end