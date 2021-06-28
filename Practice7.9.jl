function gcd(m,n)
    a, b = m, n
    x_a, y_a = 1, 0
    x_b, y_b = 0, 1
    while (b != 0)
        k = a ÷ b
        a, b = b, a % b 
        x, y = x_a, y_a
        x_a, y_a = x_b, x_a
        x_b, y_b = x - k*x_b, y - k*y_b
    end
    d = x_a*m + y_a*n
    return d, x_a
end

function inv(a, c)
    d, x = gcd(a, c)
    if (d!=1)
        return nothing
    end
    if (x < 0)
        return x + c
    end
    return x
end 