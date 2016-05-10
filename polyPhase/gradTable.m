function [ id , Mu] = gradTable( sizeSig, start, finish, step )
% ¬озвращает таблицу дл€ определени€ частоты
    sizeTab = round((finish - start ) / step);
    id = zeros(sizeTab,1);
    Mu = zeros(sizeTab,1);
    x = 1:1:sizeSig;
    for i=1:sizeTab
        mu = step*i + start;
        y = x*mu;
        signal = cos(y);
        image = abs(fft(signal));
        id(i) = getMaxIndSpectr( image );
        Mu(i) = mu;
    end
end
