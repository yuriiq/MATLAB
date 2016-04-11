function [ data ] = subObject( data, mask )
% Вычитает подложку из объекта
% data = zeros(Y,X);
[Y X] = size(data);
xD = zeros(Y*X,1);
yD = zeros(Y*X,1);
zD = zeros(Y*X,1);
i=0;
for y = 1:Y
    for x = 1:X
        if (mask(y,x) == 164) 
            i = i+1;
            xD(i) = x;
            yD(i) = y;
            zD(i) = data(y,x);
        end;
    end;
end;
xxD = zeros(i,1);
yyD = zeros(i,1);
zzD = zeros(i,1);
parfor j=1:i
    xxD(j) = xD(j);
    yyD(j) = yD(j);
    zzD(j) = zD(j);
end;
fittedmodel = fit([yyD,xxD], zzD, 'poly11');
data(:,:) = fittedmodel(:,:)-data(:,:);
end
