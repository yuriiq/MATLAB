function phi = carre( signal, p )
% 
[~, N] = size(signal);
sumX = 0; sumY = 0;
[~, I] = size(p);
for n=1:N
    % sigma = nu*(i-size/2);
	sumP = 0;
	for i=1:I
            sumP = sumP + p(i) * power(n-N/2, i);
	end
    sumX = sumX + signal(n) * cos(-sumP);
    sumY = sumY + signal(n) * sin(-sumP);
end
phi = atan2( sumY, sumX);
end

