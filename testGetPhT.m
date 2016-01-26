function [ muS, mu,  ph0] = testGetPhT( phi, min, max, N )
% тестируем getPhT
 step = (max-min)/N;
 muS = zeros(1,N);
 mu = zeros(1,N);
 ph0  = zeros(1,N);
 parfor x = 1:N
   muS(x) = min + step*x;
   phT = getPhT(phi, muS(x)); 
   ph0(x) = phT(1);
   mu(x) = phT(2);
 end;
end

