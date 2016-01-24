function [ res ] = correctArray( array )
% Прибавляет единицы в соседнюю ячейку, где значение меньше badN
% Эта функция предназначена для того, чтобы убрать ложные срабатывания при
% вычислении периода методом производных. 
    maxN = 100;
    minN = 5;
    size = numel(array); % размер массива
    res = zeros(0,size);
    notOne = 0;
    for x = size:-1:1
        if (array(x) > minN)
            notOne = x;  % находим ненулевой элемент
        end
    end
    if (notOne ==0) 
        return ; % ни один элемент не превышает порог
    end
    y=1;
    for x = notOne:1:size
        if (array(x) < minN)
            res(y-1) = res(y-1) +array(x); % если меньше порога увеличиваем предыдущее
        elseif (array(x) > maxN)
            res(y) = array(x) /2; % если значение больше порога, сохраняем его половину
            y = y+1;                        
        else
            res(y) = array(x); % если значение укладывается в порог, сохраняем его как есть
            y = y+1;            
        end
    end
end

