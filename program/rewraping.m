function [ phaseM ] = rewraping( dPhaseM )
% Восстанавливает фазу по разностям 
    disp('rewraping');
    sizeData = size(dPhaseM);
    Y = sizeData(1);
    X = sizeData(2);
    Z = sizeData(3);
    phaseM = zeros(Y,X,Z);
    for z = 2:Z
        phaseM(:,:,z) = phaseM(:,:,z-1) - dPhaseM(:,:,z);
    end;
end

