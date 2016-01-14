function [ res ] = diff2( array )
% Вычисляет квадрат производной для массива
    d = diff(array); 
    size = numel(d); % размер массива
    res = zeros(0, size);
    for x = 1:1:size
        res(x) = d(x) * d(x); % возведение в квадрат
    end
end

