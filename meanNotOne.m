function [ sum ] = meanNotOne( array )
% ������� ������� �������������� ��������� � ��������� �� min �� max
    maxN = 100;
    minN = 10;
    sum = 0;
    idN = 0;
    size = numel(array); % ������ �������
    for x = 1:1:size
        if array(x) > minN && array(x) < maxN
            sum = sum + array(x);
            idN = idN +1;
        end
    end
    sum = sum / idN;
end

