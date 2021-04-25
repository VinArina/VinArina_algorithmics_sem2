function transpose2!(A)
    n, m = size(A)
    for j in 1:n
        for i in j:m
            sp = A[i,j]
            A[i,j] = A[j,i]
            A[j,i] = sp
        end
    end
    return A
end