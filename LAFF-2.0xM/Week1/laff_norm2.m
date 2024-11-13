function [ alpha ] = laff_norm2( x )
% alpha = laff_norm2(x) computes the euclidean length of vector x
%   Vector x can be a column or row vector where x can be n x 1 or 1 x n
    
    % extract row and column size of x
    [m_x, n_x] = size(x);

    % check for proper vector dimensions
    if (m_x ~= 1 & n_x ~= 1)
        alpha = 'FAILED';
        return
    end

    alpha = sqrt(laff_dot(x, x));

    return
end


