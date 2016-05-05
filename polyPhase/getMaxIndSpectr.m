function [ res ] = getMaxIndSpectr( array )
% Вычисляем индекс максимального элемента и достраивает спектр. 
    [~, maxI] = max(array);
    if (maxI == 1)
        maxI2 = 2;
    else
        if array(maxI-1) > array(maxI+1), maxI2 = maxI-1; else maxI2 = maxI+1; end;
    end
    varA = array(maxI);
    varB = array(maxI2);
    k = (varB / varA ) / 2;
    if maxI > maxI2, res = maxI - k; else res = maxI + k;
end
