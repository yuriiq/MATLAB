function [ dataOut ] = correctPoints( data, mask, r )
% ��������� �������� ����� �� ������� 
    disp('correctPoints');
    dataOut = data;
    sizeData = size(data);
    Y = sizeData(1);
    X = sizeData(2);
    Z = sizeData(3);
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
