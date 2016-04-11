function [ points, Rs, i] = getPoints( data, y, x, r )
% Возвращает набор точек с радиусом 
    [Y X] = size(data);
    sizeR = round(pi*r*r)+1;
    points = zeros(1, sizeR); 
    Rs = zeros(1, sizeR); 
    i=0;
    for yy=y-r:y+r
        for xx=x-r:x+r
            if (yy>0 && yy<=Y && xx>0 && xx<=X && data(yy,xx) ~=0)
                inRound = (x-xx)*(x-xx) + (y-yy)*(y-yy);
                if ( r*r > inRound)
                    i = i+1;
                    points(i) = data(yy,xx);
                    Rs(i) = 1/(sqrt(inRound)+1);
                end;
            end;
        end;
    end;
end
