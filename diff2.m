function [ res ] = diff2( array )
% ��������� ������� ����������� ��� �������
    d = diff(array); 
    size = numel(d); % ������ �������
    res = zeros(0, size);
    for x = 1:1:size
        res(x) = d(x) * d(x); % ���������� � �������
    end
end

