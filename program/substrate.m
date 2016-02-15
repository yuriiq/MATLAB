function [ data ] = substrate( data, mask )
% Заполняет дыру в подложке. 
% data = zeros(Y,X);
sizeD = size(data);
Y = sizeD(1);
X = sizeD(2);
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
for y = 1:Y
    parfor x = 1:X
        if (mask(y,x) ~= 164) 
            data(y,x) = fittedmodel(y,x);
        end;
    end;
end;
end

