function  main2Phi0( dirIn, outDir, r )
% Ќасчитываем смещени€ по нулевым фазам 
Y = 253;
X = 227;
Z = 391; 
data = zeros(Y,X,Z);
parfor x=1:X
    filename = [dirIn 'X_' int2str(x) '.txt'] ;
    phase = dlmread (filename); % phase = zero(Y,Z);
%    dPhase = zeros(Y,Z);
%    for z=1:Z-1
%        dPhase(:,z) = phase(:,z+1)- phase(:,z);
    %end
    %if (r == 0), dPhase(:,:) = normPhase(dPhase(:,:)); end;
    data(:, x, :) = phase(:,:); % dPhase(:, :);
end
% mask = double(imread(mask));
if (r>0), data = correctPoints2( data, r ); end;
data  = rewraping( data );
% obj3D = getobj3D( dPhase, mask );
saveVideo(data, outDir);
disp('Finish');
end

