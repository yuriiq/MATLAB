function [ dataOut ] = correctPoints2( data, r )
% усредняет соседние точки по радиусу без маски 
    disp('correctPoints');
    dataOut = data;
    [Y X Z] = size(data);
    for z = 1:Z
        dataZ(:,:) = data(:,:,z);
        for y = 1:Y
            parfor x = 1:X
                dataOut(y,x,z) = getPoints2( dataZ, y, x, r );
            end;
        end;
        fprintf('%d; ',Z-z);
    end;
    disp('OK');
end
