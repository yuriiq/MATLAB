function [ dataOut ] = correctPoints2D( data, r )
% ��������� �������� ����� �� ������� ��� ����� 
    disp('correctPoints');
    [Y X] = size(data);
    dataOut = zeros(Y,X);
    for y = 1:Y
        for x = 1:X
            dataOut(y,x) = getPoints2( data, y, x, r );
        end;
    end;
    fprintf('%d; ',Z-z);
    disp('OK');
end