function  phiC = testCarre(N, phi, A, B)
nu = 0; p(1) = 0.35;
I = 500;
phiC = zeros(1,I);
for i =1:I
    p(2) = (i-1)*0.000001;
    sig = getGigN( N, nu, p, phi, A, B ) ;
    phii = carre( sig , p(1) );
    phiC(i) = phii - phi;
end

end

