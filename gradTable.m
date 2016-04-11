function [ id , Mu] = gradTable( sizeSig, start, finish, step )
% Возвращает параметры прямой для определения частоты
    sizeTab = round((finish - start ) / step);
    id = zeros(1,sizeTab);
    Mu = zeros(1,sizeTab);
    parfor x=1:sizeTab
        mu = step*x + start;
        signal =  cos(linePhaseMu( 0, mu, sizeSig));
        image = abs(fft(signal));
        id(x) = getMaxIndSpectr( image );
        Mu(x) = mu;
    end
    writeM = zeros(sizeTab,2);
    for x =1:sizeTab
        writeM(x, 1) = id(x);
        writeM(x, 2) = Mu(x);
    end
    dlmwrite('gradTable.txt',writeM,'\t');
end
