function log(a::T, x::T, e::T) where T<:AbstractFloat
    z, t, y = T(x), T(1), T(0)
    while (z > a || z < 1/a || t > e)   
        if (z > a)
            z /= a
            y += t 
        elseif (z < 1 / a)
            z *= a
            y -= t 
        else 
            t /= 2
            z *= z 
        end
    end
    return y
end