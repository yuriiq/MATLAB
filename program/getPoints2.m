function [ ret ] = getPoints2( data, y, x, r )
% Получает среднее вокруг точки в радиусе R без маски 
    sizeData = size(data);
    Y = sizeData(1);
    X = sizeData(2);
    sizeR = round(pi*r*r)+1;
    datas = zeros(sizeR); 
    R = zeros(sizeR); 
    i=0;
    for yy=y-r:y+r
        for xx=x-r:x+r
            if (yy>0 && yy<=Y && xx>0 && xx<=X && data(yy,xx) ~=0)
                inRound = (x-xx)*(x-xx) + (y-yy)*(y-yy);
                if ( r*r > inRound)
                    i = i+1;
                    datas(i) = data(yy,xx);
                    R(i) = 1/(sqrt(inRound)+1);
                end;
            end;
        end;
    end;
    if (i>0), ret = calcV( datas,R ); else ret = data(y,x);
end
