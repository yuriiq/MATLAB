function  testSigma ( sizeSig, ph0, minSigma, maxSigma, step, N )
% “естирование дл€ разных помех 
% тестируем getPhT
 muu = (2*pi)/(sizeSig / 7 ) ;
 size = round((maxSigma - minSigma) / step);
 ph0s = zeros(1,size);
 i=0;
 [ id , Mu] = gradTable( sizeSig, muu - 0.02 , muu + 0.02, 0.0005);
 for sigma = minSigma:step:maxSigma
    dph0  = 0;
    parfor xx = 1:N % getSigN(mu2, mu, ph0, size, sigma )
        signal = getSigN( 0, muu, ph0 , sizeSig, sigma );
        Phase = phase(signal);
        %mu2 = getMuByTable( signal, id, Mu);
        mu2 = muByTable( signal, id , Mu ) ;
        %ph0r = getPhMu(Phase, 0, mu2, 10e-5); 
        [ ~, ph0r] = muPh( Phase, mu2, 0, 10) ;
        dph0_tmp = normPhase(ph0r - ph0) ;
        dph0 = dph0 + dph0_tmp* dph0_tmp;
    end;
    i = i+1;
    ph0s(i) = dph0/N;
    disp(maxSigma-sigma);
 end;
  sigma = minSigma:step:maxSigma;
  dlmwrite('ph0s.txt', ph0s,'\n');
  dlmwrite('sigma.txt', sigma,'\n');  
end
