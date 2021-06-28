function ord(a, p)  
    ord = 0
    g = 0
    pr = 1
    g = p - 1
    for i in 1 : g
        if (mod(g, i) == 0)
            for j in 1:i 
                pr = mod((pr*mod(a, p)), p)
            end
            if (pr == 1)
                ord = i
                break
            end
            pr = 1
        end
    end  
    return ord
end