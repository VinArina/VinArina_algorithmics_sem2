function factor(n)
    d = fill(0, n)
    k = fill(0, n)
    t = 1
    count = 0
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
    
    cd = 0
    for i in 1:length(d)
        if (d[i] != 0)
            cd += 1
        else
            break
        end
    end

    ck = 0
    for i in 1:length(d)
        if (d[i] != 0)
            ck += 1
        else
            break
        end
    end

    return d[1:cd], k[1:ck]
end