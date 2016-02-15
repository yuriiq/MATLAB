function [ resPhase ] = rewraping( phase, ids )
% Разворачиваем фазу в точках 
 size = numel(ids);
 sizeImg = numel(phase);
 resPhase = zeros(1,sizeImg);
 k=0;
 idLast = 1;
 for x=1:size
     id = ids(x);
     for xx = idLast:1:id, resPhase(xx) = phase(xx) + k; end;
     a = phase(id);
     b = phase(id+1);
     if (a > b) , k = k + 2*pi; else k = k - 2*pi; end;  
     idLast = id+1;
 end;
 for xx = idLast:1:sizeImg,  resPhase(xx) = phase(xx) + k; end;
end

