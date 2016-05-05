function [ retPhase ] = phaseShiftIds( phase)
% Устраняет разрывы фаз через производную
    dPhase = diff2(phase); % квадрат первой производной
    MaxNum = pi*pi; % порог срабатывания фильтра
    size = numel(dPhase)+1; % размер массива
    retPhase = zeros(1, size); % индексы перехода фазы
    k = 0;
    retPhase(1) = phase(1);
    for x = 2:size % сохраняем номера точек, в которых преодалён порог
        if dPhase(x-1) > MaxNum
            if phase(x) > phase(x-1)
                k = k - 2*pi;
            end
            if phase(x) < phase(x-1)
                k = k + 2*pi;
            end
        end
        retPhase(x) = phase(x) + k;
    end
end

