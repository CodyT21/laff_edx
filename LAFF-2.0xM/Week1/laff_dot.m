function [ alpha ] = laff_dot( x, y )
% alpha = laff_dot(x, y) returns the dot product of vectors x and y
%   Vectors x and y can be a mixtures of column and/or row vectors where
%   x and y can be n x 1 or 1 x n arrays
    
    % extract row and column sizes of x and y
    [m_x, n_x] = size(x);
    [m_y, n_y] = size(y);

    % check for proper vector dimensions
    if (m_x ~= 1 & n_x ~= 1) | (m_y ~= 1 & n_y ~= 1)
        alpha = 'FAILED';
        return
    end
    if (m_x * n_x ~= m_y * n_y)
        alpha = 'FAILED';
        return
    end

    alpha = 0;
    if (n_x == 1) % x is a column vector
        if (n_y == 1) % y is a column vector
            for i=1:m_x
                alpha = alpha + (x(i, 1) * y(i, 1));
            end
        else % y is a row vector
            for i=1:m_x
                alpha = alpha + (x(i, 1) * y(1, i));
            end
        end
    else % x is a row vector
        if (n_y == 1) % y is a column vector
            for i = 1:n_x
                alpha = alpha + (x(1, i) * y(i, 1));
            end
        else % y is a row vector
            for i = 1:n_x
                alpha = alpha + (x(1, i) * y(1, i));
            end
        end
    end

    return
end


