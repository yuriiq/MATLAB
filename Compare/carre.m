function phi = carre( signal, p )
% 
[~, N] = size(signal);
sumX = 0; sumY = 0;
line = getLine( 0, p, N );
for n=1:N
    % sigma = nu*(i-size/2);
    sumX = sumX + signal(n) * cos(-line(n));
    sumY = sumY + signal(n) * sin(-line(n));
end
phi = atan2( sumY, sumX);
end

