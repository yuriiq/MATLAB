function [ res ] = getMaxIndSpectr( array )
% Вычисляем индекс максимального элемента и достраивает спектр. 
    size = numel(array);
    max = array(1);
    maxI = 1;
    for x = 1:1:size
        if array(x) > max
            max = array(x);
            maxI = x;
        end
    end
    if array(maxI-1) > array(maxI+1), maxI2 = maxI-1; else maxI2 = maxI+1; end;
    varA = array(maxI);
    varB = array(maxI2);
    k = (varB / varA ) / 2;
    if maxI > maxI2, res = maxI - k; else res = maxI + k;
end
