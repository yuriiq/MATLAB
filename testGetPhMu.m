function testGetPhMu( sizeSig, minMu, maxMu, step, N, sigma )
% тестируем getPhT
 size = round((maxMu - minMu) / step);
 ph0s = zeros(1,size);
 mus = zeros(1,size);
 ph0std = zeros(1,size);
 mustd = zeros(1,size);
 i=0;
 [ id , Mu] = gradTable( sizeSig, minMu-step*2, maxMu+step*2, step*0.5 );
 for x = minMu:step:maxMu
    ph0M  = zeros(1,N);
    muM   = zeros(1,N);
    ph0 = random('Normal',0,sigma,N,1);
    parfor xx = 1:N
        signal = getSigN( ph0(xx), 2*pi/x, sizeSig, sigma );
        phase = getPhase(signal);
        mu2 = getMuByTable( signal, id, Mu);
        [ph0r, mur] = getPhMu(phase, 0, mu2, 10e-5); 
        ph0M(xx) = ph0r - ph0(xx);
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

