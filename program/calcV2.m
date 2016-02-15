function [ phi ] = calcV2( dPhase)
% Среднеарифметическое фазы как сумма векторов. Все точки равноправны
 X = cos(dPhase);
 xSum = sum(X);
 Y = sin(dPhase);
 ySum = sum(Y);
 phi = atan2(ySum,xSum);
end

