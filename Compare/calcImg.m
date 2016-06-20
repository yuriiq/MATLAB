function [phi, Elapsed] = calcImg( fileName )
Start = cputime; 
pStart = [0.3, 0, 0];
pixs = double(imread(fileName));
[X Y C] = size(pixs);
phi = zeros(1,X);
sig = zeros(1,Y);
for x = 1:X
    %fprintf('%d ', x);
    sig(:) = pixs(x,:,1);
    phase = getPhase(sig);
    %[p, maxAlpha] = findMaxAlpha( phase, pMin, pMax, pStep );
    [p, maxAlpha] = findMaxAlphaS( phase, pStart);
    phi(x) = getPhi(p, phase);
	%fprintf('%10.9f %10.9f %10.9f %d\n', p(1),  p(2),  p(3), maxAlpha);
end
Elapsed = cputime - Start;
end

