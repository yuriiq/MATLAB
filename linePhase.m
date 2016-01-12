function [ phase ] = linePhase( ph0, T, size)
% Получение фазы с заданным смещением и периодом.
% ph0 - начальная фаза
% T - период
% size - размер массива
    phase = zeros(0, size);
    for x = 1:1:size
        phase(x) = ph0 + (x*2*pi)/T;
    end
end

