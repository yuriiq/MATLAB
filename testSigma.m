function  testSigma ( sizeSig, ph0, minSigma, maxSigma, step, N )
% “естирование дл€ разных помех 
% тестируем getPhT
 mu = (2*pi)/(sizeSig / 7 ) ;
 size = round((maxSigma - minSigma) / step);
 ph0s = zeros(1,size);
 i=0;
 [ id , Mu] = gradTable( sizeSig, mu - 0.02 , mu + 0.02, 0.0005);
 for sigma = minSigma:step:maxSigma
    dph0  = 0;
    parfor xx = 1:N
        signal = getSigN( ph0 , 2*pi/mu, sizeSig, sigma );
        phase = getPhase(signal);
        mu2 = getMuByTable( signal, id, Mu);
        ph0r = getPhMu(phase, 0, mu2, 10e-5); 
        dph0_tmp = normPhase(ph0r - ph0) ;
        dph0 = dph0 + dph0_tmp* dph0_tmp;
    end;
    i = i+1;
    ph0s(i) = dph0/N;
 end;
  sigma = minSigma:step:maxSigma;
  dlmwrite('ph0s.txt', ph0s,'\n');
  dlmwrite('sigma.txt', sigma,'\n');  
end
