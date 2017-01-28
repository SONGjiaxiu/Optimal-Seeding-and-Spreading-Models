function indices = getIndex(v, n)
%find the indices of the n highest values
    indices = zeros(1, n);
    for x = 1:n
        index = find(v == max(v));
        index = index(1);
        v(index) = 0;
        indices(x) = index;
    end
end