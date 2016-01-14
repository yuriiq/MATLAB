function [ phase ] = getBadPhase( ph0, T, size, n)
% ¬озвращает фазу, испорченную в некоторых точках
% ph0 - Ќачальна€ фаза
% T - ѕериод
% size - размер массива
% n - количество испорченных точек
    mu = rand(n,1)*size; % номера точек, которые будут испорчены 
    disp(mu); % вывести номера точек на экран 
    phase = linePhase( ph0, T, size); % фаза сигнала
    for x = 1:1:n
        A = 2; % высота синка
        sigma = 1.5; % ширина синка 
        sincM = getSinc( A, mu(x), sigma, size);
        phase = phase + sincM; % добавление помех
    end
end

