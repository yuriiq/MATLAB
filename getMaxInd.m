function [ maxI ] = getMaxInd( array )
% Вычисляем индекс максимального элемента. 
    size = numel(array);
    max = array(1);
    maxI = 1;
    for x = 1:1:size
        if array(x) > max
            max = array(x);
            maxI = x;
        end
    end
end

