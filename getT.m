function [ T ] = getT( phase, coeff )
% Грубая оценка периода по фазе через производную.
    dIndArr = diff(getPhaseShiftIds( phase, coeff )); % производная индексов
    dIndArr = correctArray(dIndArr); % убираем слишком маленькие значения
    T = meanNotOne(dIndArr);   
end

