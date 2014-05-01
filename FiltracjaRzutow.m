function [ FBUF ] = FiltracjaRzutow( P_row, range )
%FILTRACJARZUTOW Summary of this function goes here
%   P is a vector

    assert(all(size(P_row)) == [1], 'P should be a vector');
    
    i_max = size(P_row, 2);         % check vector length
    BUF = P_row;                    % copy vector to buffer
    FBUF = zeros(1, i_max);            % initialize vector values as 0
    
    for i = 1:i_max,                % for each vector element
        for l = -range:range,       % near all cells in range
            j = i + l;
            
            % check if cell is still in vector
            if(j >= 1 && j <= i_max) 
                FBUF(i) = FBUF(i) - (BUF(j) * (1/(4*(l^2) - 1)));
            end
        end
    end
end
