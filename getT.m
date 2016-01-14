function [ T ] = getT( phase, coeff )
% Грубая оценка периода по фазе через производную.
    dIndArr = diff(getPhaseShiftIds( phase, coeff )); % производная индексов
    dIndArr = correctArray(dIndArr); % убираем слишком маленькие значения
    size = max(dIndArr); % размер массива
    x = 1:1:size;
    h = histc(dIndArr,x);
    T = meanNotOne(dIndArr);   
    plot(h);
end

