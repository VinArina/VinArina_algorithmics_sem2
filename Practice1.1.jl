function section(I::AbstractMatrix, J::AbstractVector{<:Integer}, K::AbstractVector{<:Integer})
    cross-section = Matrix{eltype(I)}(undef, length(J), length(K))
    for j in 1:length(J)
        for k in 1:length(K)
            cross-section[j,k] = I[J[j],K[k]]
        end
    end
    return cross-section
end