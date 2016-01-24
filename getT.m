function [ T ] = getT( phase, coeff )
% Грубая оценка периода по фазе через производную.
    dIndArr = diff(getPhaseShiftIds( phase, coeff )); % производная индексов
    %dlmwrite('dIndArr.txt',dIndArr,'\n'); 
    % disp(dIndArr);
    dIndArr = correctArray(dIndArr); % убираем слишком маленькие значения
    %dlmwrite('dIndArrCorr.txt',dIndArr,'\n'); 

    T = mean(dIndArr); 
end

