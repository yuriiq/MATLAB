function ret = alpha(p, phase)
    [~,N] = size(phase); 
    phase2 = getLine( 0, p, N );
    dPhase = phase - phase2;
    sumX = 0; sumY = 0;
    for n=1:N
        sumX = sumX + cos(dPhase(n));
        sumY = sumY + sin(dPhase(n));
    end
    ret = sumX*sumX+sumY*sumY;
end