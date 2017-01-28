function R = PageRank_Iterative(A,i)
    R = ones(length(A),1);
    RPrev = ones(length(A),1);
    j = 1;
    while j <= i
        for p = 1 : length(A)
            tmp = 0;
            for q = 1 : length(A)
                if A(p,q) == 1
                    tmp = tmp + RPrev(q)/(sum(A(:,q)));
                end
            end
            R(p) = (1-0.85) + 0.85*tmp;
        end
        RPrev = R;
        j = j+1;
    end
    R = R/sum(R);
end