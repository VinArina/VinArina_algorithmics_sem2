function elem(n)
    value = n
    i=2  
    while (i*i <= n)
        if (mod(n, i) == 0)
            while (mod(n, i) == 0)
                n /= i
            end
            value -= value / i
        end
        if (i*i <= n)
            i += 1
        else
            i = 2
        end
    end
         
    if (n > 1)
        value -= value/n
    end
    return value;
 end