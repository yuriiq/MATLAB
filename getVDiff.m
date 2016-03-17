function  getVDiff( inDir, outDir, r )
% Строит разности на основе виртуальных поверхностей
    Y = 253;
    X = 227;
    Z = 391; 
    data = zeros(X, Y, Z);
    parfor x=1:X
        filename = [inDir 'X_' int2str(x)  '.txt'];
        disp(filename);
        dataX = dlmread (filename); % dataX = zeros(Y,Z);
        data(x, :, :) = dataX(:,:);
    end
    dataV = zeros(X,Y);
    dataV(:,:) = data(:,:,1);
    for z=2:Z
        dData = data(:,:,z) - dataV(:,:);
        dData = blur(dData, r);
        %for x=1:X
        %    for y=1:Y
        %        dData(x,y) = normPhase( dData(x,y) );
        %    end
        %end
        dataV(:,:) = dataV(:,:) + dData(:,:);
        data(:,:,z-1) = dData(:,:);
        fprintf('%d; ',Z-z);
    end
    parfor x=1:X
        filename = [outDir 'X_' int2str(x)  '.txt'];
        disp(filename);
        dataW = zeros(Y,Z);
        dataW(:, :) = data(x, :, :);
        dlmwrite (filename, dataW); 
    end
end

