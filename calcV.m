function [ phi ] = calcV( points, Rs, I )
% Среднеарифметическое фазы как сумма векторов
 xSum = 0;
 ySum = 0;
 X = cos(points);
 Y = sin(points);
 for i=1:I
    xSum = xSum + Rs(i)*X(i);
    ySum = ySum + Rs(i)*Y(i);
 end;
 phi = atan2(ySum,xSum);
end

