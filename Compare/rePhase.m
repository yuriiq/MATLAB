function [ phase ] = rePhase( phase )
    [~, X] = size(phase);
    d = zeros(1,X);
    for x = 2:X
        d(x) = normPhase( phase(x) - phase(x-1) ); 
    end
    for x = 2:X
        phase(x) = phase(x-1) + d(x);
    end
end

