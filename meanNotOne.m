function [ sum ] = meanNotOne( array )
% ������� ������� ��������������.
% ����������� ������ �������� ������ 1
    size = numel(array); % ������ �������
    sum = 0;
    idN = 0;
    maxN = 100;
    minN = 10;
    for x = 1:1:size
        if array(x) > minN && array(x) < maxN
            sum = sum + array(x);
            idN = idN +1;
        end
    end
    sum = sum / idN;
end

