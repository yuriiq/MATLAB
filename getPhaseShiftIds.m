function [ indArr ] = getPhaseShiftIds( phase, coeff )
% Возвращает номера точек, в кторорых возможен сдвиг фазы
    y = 1;
    dPhase = diff2(phase); % квадрат первой производной
    dPhase = diff2(dPhase); % квадрат второй производной
    MaxNum = max(dPhase) * coeff; % порог срабатывания фильтра
    size = numel(dPhase); % размер массива
    indArr = zeros(0, size); % индексы перехода фазы
    for x = 1:1:size % сохраняем номера точек, в которых преодалён порог
        if dPhase(x) > MaxNum
            indArr(y) = x;
            y = y+1;
        end
    end
end

