function katz_cent = Katz_Centrality(A,alpha,beta)
    I = eye(length(A));
    beta = ones(length(A),1)*beta;
    katz_cent = ((I-alpha*A)^(-1))*beta;
    katz_cent = katz_cent/sum(katz_cent);
end