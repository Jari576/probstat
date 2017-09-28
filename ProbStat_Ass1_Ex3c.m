
    n = 16;
    p = 1/4;
    X = (rand(n,1000)<p);
    X = sum(X);
    disp(X);
    histogram(X);
    
    Y = (X == 5);
    Y = sum(Y);
    disp(Y);
    Z = (X < 6);
    Z = sum(Z);
    disp(Z);
