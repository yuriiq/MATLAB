function dData = blur(dData, r)
% сглаживание фазы через сумму векторов по соседним точкам 
    [Y X] = size(dData);
    for y = 1:Y
        for x = 1:X
            [ points, Rs, i] = getPoints( dData, y, x, r ); 
            dData(y,x) = calcV( points, Rs, i );
        end;
    end;
end