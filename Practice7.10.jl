function gcd(a, b)
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
    
function zero_divisor(m)
    count = 0
    del = fill(0, m)
     for i in 0:m - 1
         if (gcd(m, i) != 1 && i != 0)
            del[count + 1] = i
            count += 1
        end
    end
     
    del_c = 0
    for i in 1:length(del)
        if (del[i] != 0)
            del_c += 1
        else
            break
        end
    end
 
    if del_c==0
        return del
    else
        del[1:del_c]
    end
end