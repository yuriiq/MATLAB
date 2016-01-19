function [ res ] = getSincs( size, n)
% ���������� ��������� ������ � ����� ������� 
    mu = rand(n,1)*size; % ������ �����, ������� ����� ��������� 
    disp(mu); % ������� ������ ����� �� ����� 
    res = zeros(1,size); % ������� ������
    for x = 1:1:n
        A = 1; % ������ �����
        sigma = size * 0.003; % ������ ����� 
        sincM = getSinc( A, mu(x), sigma, size);
        res = res + sincM; % ���������� �����
    end
end
