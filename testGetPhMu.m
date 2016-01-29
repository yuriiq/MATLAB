function testGetPhMu( sizeSig, minMu, maxMu, step, N, sigma )
% тестируем getPhT
 size = round((maxMu - minMu) / step);
 ph0s = zeros(1,size);
 mus = zeros(1,size);
 ph0std = zeros(1,size);
 mustd = zeros(1,size);
 ph0 = 1;
 i=0;
 p = gradTable( sizeSig, minMu, maxMu, step );
 for x = minMu:step:maxMu
    ph0M  = zeros(1,N);
    muM   = zeros(1,N);
    for xx = 1:N
        signal = getSigN( ph0, 2*pi/x, sizeSig, sigma );
        phase = getPhase(signal);
        % mu2 = getMuByP( signal, p );
        [ph0r, mur] = getPhMu(phase, 0, x*1.08, 10e-5); 
        ph0M(xx) = ph0r - ph0;
        muM(xx) =  mur - x;
    end;
    i = i+1;
    ph0s(i) =  mean(ph0M);
    mus(i) = mean(muM);
    ph0std(i) = std(ph0M);
    mustd(i) = std(muM);
 end;
  x = minMu:step:maxMu;
  dlmwrite('ph0s.txt', ph0s,'\n');
  dlmwrite('ph0std.txt', ph0std,'\n');  
  dlmwrite('mus.txt', mus,'\n');
  dlmwrite('mustd.txt', mustd,'\n');  
  dlmwrite('x.txt', x,'\n');  
end

