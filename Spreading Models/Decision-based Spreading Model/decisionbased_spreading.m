function [num] = decisionbased_spreading (adj, seed, q)
    i = zeros(length(adj), 1);
    x = 0;
    prev = seed;
    n = round(length(adj)/10); %decided that this is an appropriate length
    infec = zeros(n, 1);
    while sum(prev)~=sum(i)
       prev = seed;
       i = det_spreading(adj, seed, q); % spread in one time interval
       seed = i;
       x = x+1;
       infec(1, x) = sum(i); 
    end
    num = sum(i);
end