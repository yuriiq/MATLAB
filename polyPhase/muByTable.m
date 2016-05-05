function [ mu ] = muByTable( signal, id , Mu )
% вычисляет частоту сигнала через его спектр
    image = abs(fft(signal));
    Id = getMaxIndSpectr( image );
    size = numel(id);
    mu = 0;
	if (Id == id(1)), mu = Mu(1); return; end;
    for x=2:size
        if ( Id > id(x-1) )&& (Id < id(x)) 
            mu = (Mu(x-1) + Mu(x)) / 2;
            return ;
        end;
        if (Id == id(x)), mu = Mu(x); return; end;
    end;
end
