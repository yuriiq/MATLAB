function  cutMake( dirIn, dirOut )
% Делает срезы по кадрам в папке 
minSeria = 40;
maxSeria = 90;
maxCdr = 124;
X = 202;
Y = 230;
C = maxCdr+1;
S = maxSeria-minSeria+1;
dataArray = zeros(S,C,Y,X);
    for seria = minSeria:1:maxSeria;
        for cadr = 0:1:maxCdr;
            if (cadr <10), nul = '0'; else nul = ''; end;
            filename = [dirIn 'shot_00' int2str(seria) '_01_' nul int2str(cadr) 'r.bmp'];
            img = grayImg(double(imread(filename)));
            for x = 1:X
                for y = 1:Y
                    dataArray(seria-minSeria+1,cadr+1,y,x) = img(y,x);
                end;
            end;
        end;
        disp(seria);
    end;
    parfor x = 1:X
        dataArrayY = dataArray(:,:,:,x);
        mkdir([dirOut 'X_' int2str(x)]);
        for y = 1:Y
            img = zeros(S,C, 'uint8');
            for cadr = 1:1:C;
                for seria = 1:1:S;
                    img(seria,cadr) = dataArrayY(seria,cadr,y);
                end;
            end;
            filename = [dirOut 'X_' int2str(x) '\Y_' int2str(y) '.bmp'];
            imwrite(img, filename, 'bmp');
        end;
    end;
end

