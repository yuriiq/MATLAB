function [ sum ] = meanNotOne( array )
% —читает среднее арифметическое элементов в диапазоне от min до max
    maxN = 100;
    minN = 10;
    sum = 0;
    idN = 0;
    size = numel(array); % размер массива
    for x = 1:1:size
        if array(x) > minN && array(x) < maxN
            sum = sum + array(x);
            idN = idN +1;
        end
    end
    sum = sum / idN;
end

