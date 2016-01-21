function [ res ] = correctArray( array )
% Прибавляет единицы в соседнюю ячейку, где значение меньше badN
% Эта функция предназначена для того, чтобы убрать ложные срабатывания при
% вычислении периода методом производных. 
    badN = 2;
    size = numel(array); % размер массива
    res = zeros(0,size);
    notOne = 0;
    for x = size:-1:1
        if (array(x) > badN)
            notOne = x;  % находим ненулевой элемент
        end
    end
    if (notOne ==0) 
        return ; % ни один элемент не превышает порог
    end
    y=1;
    for x = notOne:1:size
        if (array(x) > badN)
            res(y) = array(x); % если значение в массиве больше порога, сохраняем его
            y = y+1;
        else
            res(y-1) = res(y-1) +badN; % иначе увеличиваем предыдущее
        end
    end
end

