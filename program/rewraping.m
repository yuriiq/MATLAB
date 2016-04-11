function [ phaseM ] = rewraping( dPhaseM )
% Восстанавливает фазу по разностям 
    disp('rewraping');
    [X Y Z] = size(dPhaseM);
    phaseM = zeros(X,Y,Z);
    for z = 2:Z
        phaseM(:,:,z) = phaseM(:,:,z-1) - dPhaseM(:,:,z);
    end;
end

