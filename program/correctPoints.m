function [ dataOut ] = correctPoints( data, mask, r )
% усредняет соседние точки по радиусу 
    disp('correctPoints');
    dataOut = data;
    [Y X Z] = size(data);
    for z = 1:Z
        dataZ(:,:) = data(:,:,z);
        for y = 1:Y
            parfor x = 1:X
                dataOut(y,x,z) = getPoints( dataZ, mask, y, x, r );
            end;
        end;
        fprintf('%d; ',Z-z);
    end;
    disp('OK');
end

