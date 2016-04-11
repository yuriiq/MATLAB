function [ sincM ] = getSinc( A, mu, sigma, size)
% ���������� sinc � ��������� �����������.
% A - ���������, 
% sigma - ������ �����
% mu - ��������
    sincM = zeros(1,size);
    for x = 1:1:size
        sincM(x) = A*sinc( (x-mu) / sigma );
    end
end

