function [ phase ] = getBadPhase( ph0, T, size, n)
% ���������� ����, ����������� � ��������� ������
% ph0 - ��������� ����
% T - ������
% size - ������ �������
% n - ���������� ����������� �����
    mu = rand(n,1)*size; % ������ �����, ������� ����� ��������� 
    disp(mu); % ������� ������ ����� �� ����� 
    phase = linePhase( ph0, T, size); % ���� �������
    for x = 1:1:n
        A = 2; % ������ �����
        sigma = 1.5; % ������ ����� 
        sincM = getSinc( A, mu(x), sigma, size);
        phase = phase + sincM; % ���������� �����
    end
end

