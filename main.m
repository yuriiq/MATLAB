function main( dirIn, dirOut )
% Насчитываем смещения по срезам
startX = 168;
X=202;
Y=230;
Z=51;
for x = startX:X
    data = zeros(Y,Z);
    for y = 1:Y
        filename = [dirIn 'X_' int2str(x) '\Y_' int2str(y) '.bmp'];
        disp(filename);
        img = double(imread(filename));
        res2D =  testRSignals( img );
        %indArr = getPhaseShiftIds( res2D, 0.25 );
        %resPhase = rewraping( res2D, indArr );
        for z = 1:Z
            data(y,z) = res2D(z);
        end;
    end;
    filename = [dirOut 'X_' int2str(x)  '.txt'];
    dlmwrite(filename, data );
    disp(filename);
end;

    
    

