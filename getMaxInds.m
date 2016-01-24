function [ ids ] = getMaxInds( array, k )
% ���������� ������ ��������, ��� ������� ��������� ������ ������������� �� �����, ���  ��
% k ���������. 
    size = numel(array);
    maxN = max(array);
    ids = zeros(0, size);
    y = 1;
    for x = 1:1:size
        if (array(x) > maxN*k) 
            ids(y) = x;
            y = y+1;
        end
    end
end

