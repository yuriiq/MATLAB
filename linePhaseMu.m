function [ phase ] = linePhaseMu( ph0, mu, size)
% ��������� ������ � ��������� �����������
    phase = zeros(0, size);
    for x = 1:1:size
        phase(x) = ph0 + x*mu;
    end
end

