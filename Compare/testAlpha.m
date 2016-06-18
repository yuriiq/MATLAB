function [dPhi, Nu] = testAlpha(~ )
    N = 125;
    p = [0.353 0.0012];
    pMin = [0.3, -0.002]; pMax = [0.4, 0.002]; pStep = [0.002, 0.0002];
    phi = pi/2;
    A = 120; B = 127;
    I = 100; K = 500;
    dPhi = zeros(1,I);
    Nu = zeros(1,I);
    for i = 1:I
        disp(i);
        nu = pi*(i-1)/I;
        dPicSum = 0;
        for k = 1:K
            sig = getGigN( N, nu, p, phi, A, B );
            phase = getPhase( sig );
            retP = findMaxAlpha(phase, pMin , pMax, pStep );
            phiR = getPhi(retP, phase);
            dphi = normPhase(phiR - phi)  ;
            dPicSum = dPicSum + dphi*dphi;
        end
        dPhi(i) = dPicSum/K;
        Nu(i) = nu;
    end
end

