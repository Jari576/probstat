function [E, F, R] = ProbStat_Ass1_Ex4a(n)
    E = n;
    F = n;
    R = 0;

    while(E > 1)
        F = E;
        Y = linspace(0,1,E);
        Y = repmat(Y, E, 1);
        
        X = rand(E, 1);
        X = repmat(X, 1, E);
        
        Z = X>Y;
        Z = sum(Z.');
        for c = 1:size(Z)
            if(c<=Z(c))
                Z(c) = Z(c) + 1;
            end
        end
        A = unique(Z);
        
        E = E - size(A,2);
        R = R + 1;
    end
end