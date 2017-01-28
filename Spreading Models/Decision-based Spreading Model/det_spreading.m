function i = det_spreading (adj, seed, q)
    neighbors = adj * seed;
    i = (neighbors ./ sum(adj,2)) > q;
    for k = 1:length(seed)
        if(seed(k, 1) == 1)
            i(k, 1) = 1;
        end
    end
end