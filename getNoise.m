function [ z ] = getNoise( sigma, size )
% ��������� ��������� �������������� ����
    mu = 0; 
    z = zeros(1, size);
    for x = 1:1:size
        z(x) = normrndself(mu, sigma);
    end 
end

