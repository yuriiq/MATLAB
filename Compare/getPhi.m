function ret = getPhi(p, phase)
    [~,N] = size(phase); 
    phase2 = getLine( 0, p, N );
    dPhase = phase - phase2;
    sumX = 0; sumY = 0;
    for n=1:N
        sumX = sumX + cos(dPhase(n));
        sumY = sumY + sin(dPhase(n));
    end
    ret = atan2(sumY, sumX);
	sig = getGigN( N, 0, p, ret, 1, 0 );
	phase2 = getPhase( sig );
    dPhase = phase - phase2;
    sumX = 0; sumY = 0;
    for n=1:N
        sumX = sumX + cos(dPhase(n));
        sumY = sumY + sin(dPhase(n));
    end
    ret = ret + atan2(sumY, sumX);
end