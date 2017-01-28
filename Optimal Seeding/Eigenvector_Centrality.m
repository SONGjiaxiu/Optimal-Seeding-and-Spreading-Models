function eig_cent = Eigenvector_Centrality(A)
    eigV =  eig(A);
    [L,D] = eig(A);
    i=find(eigV==max(eigV));
    eig_cent=L(:,i);
    eig_cent=eig_cent/sum(eig_cent);
end