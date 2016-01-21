function [ res ] = correctArray( array )
% ���������� ������� � �������� ������, ��� �������� ������ badN
% ��� ������� ������������� ��� ����, ����� ������ ������ ������������ ���
% ���������� ������� ������� �����������. 
    badN = 2;
    size = numel(array); % ������ �������
    res = zeros(0,size);
    notOne = 0;
    for x = size:-1:1
        if (array(x) > badN)
            notOne = x;  % ������� ��������� �������
        end
    end
    if (notOne ==0) 
        return ; % �� ���� ������� �� ��������� �����
    end
    y=1;
    for x = notOne:1:size
        if (array(x) > badN)
            res(y) = array(x); % ���� �������� � ������� ������ ������, ��������� ���
            y = y+1;
        else
            res(y-1) = res(y-1) +badN; % ����� ����������� ����������
        end
    end
end

