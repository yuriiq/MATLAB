function sig = getGigN( N, nu, p, phi, A, B )
    noise = nu*randn(1,N);
    line = getLine( phi, p, N );
    sig = A*cos(line+noise)+ B;
end

