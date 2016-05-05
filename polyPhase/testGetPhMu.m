function testGetPhMu( sizeSig, minMu, maxMu, step, N, sigma )
% тестируем getPhT
 size = round((maxMu - minMu) / step);
 % ph0s = zeros(1,size);
 % mus = zeros(1,size);
 % mu2s = zeros(1,size);
 ph0std = zeros(1,size);
 % mustd  = zeros(1,size);
 % mu2std = zeros(1,size);
 i=0; muu = (2*pi)/(sizeSig / 7 ) ;
 % [id, Mu] = gradTable( sizeSig, minMu-step*2, maxMu+step*2, step*0.5 );
 for x = minMu:step:maxMu
    dph0 = 0;
    % muM  = zeros(1,N);
    % mu2M = zeros(1,N);
    ph0  = 0;
    parfor xx = 1:N
        signal = getSigN(x, muu, ph0, sizeSig, sigma ) ;
        Phase  = phase(signal);
        muTable = muu; % muByTable( signal, id, Mu);
        [~, ~, ph0r] = mu2Ph( Phase, muTable, 0, 10);
        % [~, ph0r] = muPh( Phase, muTable, 0, 10); 
        dph0_tmp = normPhase(ph0r - ph0) ;
        dph0 = dph0 + dph0_tmp* dph0_tmp;
        % muM(xx) =  mur - x;
        % mu2M(xx) =  mu2r - x;
    end;
    i = i+1;
    % ph0s(i) = mean(ph0M);
    % mus(i) = mean(muM);
    % mu2s(i) = mean(mu2M);
	ph0std(i) = dph0/N;
    % ph0std(i) = std(ph0M);
    % mustd(i) = std(muM);
    % mu2std(i) = std(mu2M);
    disp(maxMu-x);
 end;
  x = minMu:step:maxMu;
  dlmwrite('x.txt', x,'\n');  
  dlmwrite('ph0std.txt', ph0std,'\n');  
  % dlmwrite('ph0s.txt', ph0s,'\n');
  % dlmwrite('mus.txt', mus,'\n');
  % dlmwrite('mustd.txt', mustd,'\n');  
  % dlmwrite('mu2s.txt', mu2s,'\n');
  % dlmwrite('mu2std.txt', mu2std,'\n');  
end
