function [degree, eig, katz, page, greedy] = optimal_seeding(adj, a, b, n)
    
    %find highest degree centralities
    degree_unsorted = Out_Degree_Centrality(adj);
    degree = getIndex(degree_unsorted, n)

    %find highest eigenvector centralities
    eig_unsorted = Eigenvector_Centrality(adj);
    eig = getIndex(eig_unsorted, n)

    %find highest katz centralities
    katz_unsorted = Katz_Centrality(adj, a, b);
    katz = getIndex(katz_unsorted, n)

    %find highest pagerank centralities
    page_unsorted = PageRank_Iterative(adj, 100);
    page = getIndex(page_unsorted, n)

    %find highest using greedy algorithm
    greedy = greed_seeding(adj,n)

end
