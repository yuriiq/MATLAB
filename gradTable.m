function [ p ] = gradTable( sizeSig, start, finish, step )
% Возвращает параметры прямой для определения частоты
    sizeTab = round((finish - start ) / step);
    id = zeros(0,sizeTab);
    T = zeros(0,sizeTab);
    parfor x=1:sizeTab
        mu = step*x + start;
        signal =  cos(linePhaseMu( 0, mu, sizeSig));
        image = abs(fft(signal));
        id(x) = getMaxInd( image );
        T(x) = mu;
    end
    p = polyfit(id,T,1);
end

