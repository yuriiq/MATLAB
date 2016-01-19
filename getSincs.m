function [ res ] = getSincs( size, n)
% Возвращает несколько синков в одном массиве 
    mu = rand(n,1)*size; % номера точек, которые будут испорчены 
    disp(mu); % вывести номера точек на экран 
    res = zeros(1,size); % готовим массив
    for x = 1:1:n
        A = 1; % высота синка
        sigma = size * 0.003; % ширина синка 
        sincM = getSinc( A, mu(x), sigma, size);
        res = res + sincM; % добавление помех
    end
end
