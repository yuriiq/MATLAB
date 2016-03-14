function  cutMake( dirIn, dirOut )
% Нарезает срезы по пикселям 
minSeria = 340;
maxSeria = 730;
maxCdr = 124;
prefix = 'shot_0';
fn = [dirIn prefix int2str(maxSeria) '_01_00r.bmp'];
imgTmp = imread(fn);
imgS = size(imgTmp);
X = imgS(2);
Y = imgS(1);
C = maxCdr+1;
S = maxSeria-minSeria+1;
parfor x = 1:X
    dirName = [dirOut 'X_' int2str(x)];
    if ( exist( dirName, 'dir') == 0),  mkdir(dirName); end;
    dataArray = uint8(zeros(Y,S,C));
        for seria = minSeria:1:maxSeria;
            nuls = '';
            if (seria <100), nuls = [nuls '0']; end;
            if (seria < 10), nuls = [nuls '0']; end;
            for cadr = 0:1:maxCdr;
                if (cadr <10), nul = '0'; else nul = ''; end;
                filenameA = [dirIn prefix nuls int2str(seria) '_01_' nul int2str(cadr) 'r.bmp'];
                img = imread(filenameA);
                dataArray(:,seria-minSeria+1,cadr+1) = img(:,x,1);
            end;
        end;
        for y=1:Y
            filenameB = [dirOut 'X_' int2str(x) '\Y_' int2str(y) '.bmp'];
            img = uint8(zeros(S,C));
            img(:,:) = dataArray(y,:,:);
            imwrite(img, filenameB );
        end;
        disp(X-x);
end;
end

