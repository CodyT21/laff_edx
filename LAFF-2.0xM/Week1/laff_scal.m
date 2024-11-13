function [ x_out ] = laff_scal( alpha, x )
% x = laff_scale(alpha, x) scales a vector x by a factor of alpha
%   Vector x can be a column or row vector where
%   x can be n x 1 or 1 x n
    
    % extract row and column size of x
    [m_x, n_x] = size(x);

    % check for proper vector dimensions
    if (m_x ~= 1 & n_x ~= 1) | ~isscalar(alpha)
        x_out = 'FAILED';
        return
    end

    if (n_x == 1) % x is a column vector
        for i=1:m_x
            x(i, 1) = alpha * x(i, 1);
        end
    else % x is a row vector
        for i = 1:n_x
            x(1, i) = alpha * x(1, i);
        end
    end

    x_out = x;
    return
end


