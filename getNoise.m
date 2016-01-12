function [ z ] = getNoise( sigma, size )
% Получение нормально распределённого шума
    mu = 0; 
    z = zeros(0, size);
    for x = 1:1:size
        z(x) = normrndself(mu, sigma);
    end 
end

