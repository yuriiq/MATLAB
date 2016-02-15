function [ data ] = calcDPhase( dirIn )
% Обработка картинок в разности фаз
dataArray = loadData( dirIn ); % dataArray = zeros(S,C,Y,X);
disp('calcDPhase');
sizeAr = size(dataArray);
X=sizeAr(4);
Y=sizeAr(3);
Z=sizeAr(1);
data = zeros(Y,X,Z);
for y = 1:Y
   parfor x = 1:X
      img = dataArray(:,:,y,x);
      shift =  cutCalc( img );
      data(y,x,:) = shift(:);
   end;
   fprintf('%d; ',Y-y);
end;
disp('OK');
end

