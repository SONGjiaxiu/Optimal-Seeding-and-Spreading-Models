function [S,initial,final] = ICM_spreading(W,S)
    SPrev = zeros(length(W),1);
    initial = sum(S);
    while sum(S) ~= sum(SPrev)  % Keeps looping if the previous infected vector is not equal to the current infected vector
        SPrev = S;
        for i = 1 : length(W)
           for j =  1 : length(W)
              if S(i,1) == 0 && W(i,j)>0 && SPrev(j,1) == 1 %If not infected, and there is an edge between i and j (j is pointing to i)
                 if rand <= W(i,j)  %If random number generated is smaller than the edge probability, then i gets infected
                    S(i,1) = 1;
                 end
                 W(i,j) = 0; % Delete the edge
              end
           end
        end
    end
    final = sum(S);
end