function pow(a, n::Integer) 
	res = 1
	while (n > 0)
		if (mod(n, 2) == 0) 
			a *= a
			n = div(n, 2)
		else 
			res *= a
			n -= 1
        end
    end
return res;
end