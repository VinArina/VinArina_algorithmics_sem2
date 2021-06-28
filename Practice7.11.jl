function gcd(a,b)
    if (a == 0 || b == 0) 
        nod = a + b  
    end 
    while (b != 0)
        if (a > b)
            a -= b  
        else
            b -= a
        end
    end
nod = a
return nod
end

function nilpotent(n)
    pr = 1
    d = fill(0, n)
    k = fill(0, n)
    t = 1
    count = 0
    m = n
    for i in 2 : sqrt(n)
        pow = 0
        count = 0
        while (mod(n, i) == 0) 
            count += 1
            pow += 1
            n /= i
        end
        if (count != 0)   
            d[t] = i
            k[t] = pow
            t += 1
        end
    end
    if (n != 1) 
        d[t] = n
        k[t] = 1
    end

    count = 0
    del = fill(0, m)
    for i in 0:m - 1
        if (gcd(m, i) != 1 && i != 0)
            del[count + 1] = i
            count += 1
        end
    end
    cd = 0
    for i in 1: length(d)
        if (d[i] != 0)
            cd += 1
        end
    end
    cz = 0
    for i in 1: length(del)
        if (del[i] != 0)
            cz += 1
        end
    end 
    
    for i in 1:cd
        pr *= d[i]
    end

    nilpotent = 0
    nilp = fill(0, m)
    for j in 1:cz
        nilpotent = pr*del[j]
        nilp[j] = mod(nilpotent, m)
    end
    if (cz == 0)
        return 0:0
    else   
        return nilp[1] : nilp[cz]
    end
end