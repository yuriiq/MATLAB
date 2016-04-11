function [ sincM ] = getSinc( A, mu, sigma, size)
% Возвращает sinc с заданными параметрами.
% A - амплитуда, 
% sigma - ширина синка
% mu - смещение
    sincM = zeros(1,size);
    for x = 1:1:size
        sincM(x) = A*sinc( (x-mu) / sigma );
    end
end

