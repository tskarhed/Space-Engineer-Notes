function values = fibonacci( n )
% Returns a vector of n fibonacci values

%Set initial values
values(1) = 0;
values(2) = 1;

%Start at 3 to account for inital values...
    for pos = 3:n
        values(pos) = values(pos-1) + values(pos-2);
    end

end

