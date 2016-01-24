function [ res ] = correctArray( array )
% ���������� ������� � �������� ������, ��� �������� ������ badN
% ��� ������� ������������� ��� ����, ����� ������ ������ ������������ ���
% ���������� ������� ������� �����������. 
    maxN = 100;
    minN = 5;
    size = numel(array); % ������ �������
    res = zeros(0,size);
    notOne = 0;
    for x = size:-1:1
        if (array(x) > minN)
            notOne = x;  % ������� ��������� �������
        end
    end
    if (notOne ==0) 
        return ; % �� ���� ������� �� ��������� �����
    end
    y=1;
    for x = notOne:1:size
        if (array(x) < minN)
            res(y-1) = res(y-1) +array(x); % ���� ������ ������ ����������� ����������
        elseif (array(x) > maxN)
            res(y) = array(x) /2; % ���� �������� ������ ������, ��������� ��� ��������
            y = y+1;                        
        else
            res(y) = array(x); % ���� �������� ������������ � �����, ��������� ��� ��� ����
            y = y+1;            
        end
    end
end

