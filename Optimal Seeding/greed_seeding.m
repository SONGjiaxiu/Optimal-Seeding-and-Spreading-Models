function indices = greed_seeding(adj, n)
    num = 1; 
    indices = zeros(1, n);
    prev_seed = zeros(length(adj), 1);
    seed = prev_seed;
    while(num <= n)
        greed = zeros(length(adj), 1);
        prev_seed = seed;
        %choose first node
        for x = 1:length(adj)
            prev_seed(x)
            if ~(prev_seed(x)) %make sure new seed value
                seed = prev_seed;
                seed(x) = 1; %old seed + new value
                [S, initial, final] = ICM_spreading(adj, seed); %run simulation
                greed(x) = final;
            end
        end
        index = find(greed == max(greed)); %find index of max influence
        indices(num) = index(1);
        prev_seed(indices(num)) = 1; %set seed
        num = num + 1; 
    end
end