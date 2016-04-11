function [ indArr ] = getPhaseShiftIds( phase, coeff )
% Возвращает номера точек, в кторорых возможен сдвиг фазы
    y = 1;
    %dlmwrite('phase.txt',phase,'\n');
    dPhase = diff2(phase); % квадрат первой производной
    %dlmwrite('dPhase.txt',dPhase,'\n');
    % dPhase = diff2(dPhase); % квадрат второй производной
    %dlmwrite('dPhase2.txt',dPhase,'\n');
    MaxNum = max(dPhase) * coeff; % порог срабатывания фильтра
    size = numel(dPhase); % размер массива
    indArr = zeros(1, size); % индексы перехода фазы
    for x = 1:1:size % сохраняем номера точек, в которых преодалён порог
        if dPhase(x) > MaxNum
            indArr(y) = x;
            y = y+1;
        end
    end
    %dlmwrite('indArr.txt',indArr,'\n');    
end

