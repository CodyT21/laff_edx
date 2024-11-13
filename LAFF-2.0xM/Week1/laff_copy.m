function [ y_out ] = laff_copy( x, y )
% y = laff_copy(x, y) copies vector x into vector y
%   Vectors x and y can be a mixtures of column and/or row vectors where
%   x and y can be n x 1 or 1 x n arrays
    
    % extract row and column sizes of x and y
    [m_x, n_x] = size(x);
    [m_y, n_y] = size(y);

    % check for proper vector dimensions
    if (m_x ~= 1 & n_x ~= 1) | (m_y ~= 1 & n_y ~= 1)
        y_out = 'FAILED';
        return
    end
    if (m_x * n_x ~= m_y * n_y)
        y_out = 'FAILED';
        return
    end


    if (n_x == 1) % x is a column vector
        if (n_y == 1) % y is a column vector
            for i=1:m_x
                y(i, 1) = x(i, 1);
            end
        else % y is a row vector
            for i=1:m_x
                y(1, i) = x(i, 1);
            end
        end
    else % x is a row vector
        if (n_y == 1) % y is a column vector
            for i = 1:n_x
                y(i, 1) = x(1, i);
            end
        else % y is a row vector
            for i = 1:n_x
                y(1, i) = x(1, i);
            end
        end
    end

    y_out = y

    return
end


