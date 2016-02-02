function  testSigma ( sizeSig, ph0, minSigma, maxSigma, step, N )
% “естирование дл€ разных помех 
% тестируем getPhT
 mu = (2*pi)/(sizeSig / 7 ) ;
 size = round((maxSigma - minSigma) / step);
 ph0s = zeros(1,size);
 mus = zeros(1,size);
 ph0std = zeros(1,size);
 mustd = zeros(1,size);
 i=0;
 [ id , Mu] = gradTable( sizeSig, mu - 0.02 , mu + 0.02, 0.0005);
 for sigma = minSigma:step:maxSigma
    ph0M  = zeros(1,N);
    muM   = zeros(1,N);
    parfor xx = 1:N
        signal = getSigN( ph0 , 2*pi/mu, sizeSig, sigma );
        phase = getPhase(signal);
        mu2 = getMuByTable( signal, id, Mu);
        [ph0r, mur] = getPhMu(phase, 0, mu2, 10e-5); 
        ph0M(xx) = ph0r - ph0 ;
        muM(xx) =  mur - mu;
    end;
    i = i+1;
    ph0s(i) =  mean(ph0M);
    mus(i) = mean(muM);
    ph0std(i) = std(ph0M);
    mustd(i) = std(muM);
 end;
  sigma = minSigma:step:maxSigma;
  dlmwrite('ph0s.txt', ph0s,'\n');
  dlmwrite('ph0std.txt', ph0std,'\n');  
  dlmwrite('mus.txt', mus,'\n');
  dlmwrite('mustd.txt', mustd,'\n');  
  dlmwrite('sigma.txt', sigma,'\n');  
end
