function main( dirIn, dirOut )
% Насчитываем смещения по срезам
startX = 203;
X = 227 ;
Y = 253;
eps = 10e-20; maxY=30;
fn = [dirIn '\X_1\Y_1.bmp'];
imgTmp = imread(fn);
imgS = size(imgTmp);
Z = imgS(1);
sizeSig = imgS(2);
start = 0.2;
finish = 0.5;
step = 0.0001;
[ id , Mu] = gradTable( sizeSig, start, finish, step );
for x = startX:X
    data = zeros(Y,Z);
    parfor y = 1:Y
        filename = [dirIn '\X_' int2str(x) '\Y_' int2str(y) '.bmp'];
        disp(filename);
        img = double(imread(filename));
        res2D =  testRSignals( img, id, Mu, eps, maxY );
        %indArr = getPhaseShiftIds( res2D, 0.25 );
        %resPhase = rewraping( res2D, indArr );
        data(y,:) = res2D(:);
    end;
    filename = [dirOut '\X_' int2str(x)  '.txt'];
    dlmwrite(filename, data );
    disp(filename);
end;

    
    

