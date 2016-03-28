function dataArray = loadData( dirIn )
% ������ ��� ����� � ������ 
disp('loadData');
minSeria = 340;
maxSeria = 345;
maxCdr = 124;
prefix = 'shot_0';
filename = [dirIn prefix int2str(maxSeria) '_01_00r.bmp'];
img = imread(filename);
imgS = size(img);
X = imgS(2);
Y = imgS(1);
C = maxCdr+1;
S = maxSeria-minSeria+1;
dataArray = zeros(S,C,Y,X);
    for seria = minSeria:1:maxSeria;
        nuls = '';
        if (seria <100), nuls = [nuls '0']; end;
        if (seria < 10), nuls = [nuls '0']; end;
        for cadr = 0:1:maxCdr;
            if (cadr <10), nul = '0'; else nul = ''; end;
            filename = [dirIn prefix nuls int2str(seria) '_01_' nul int2str(cadr) 'r.bmp'];
            img = double(imread(filename));
            dataArray(seria-minSeria+1,cadr+1,:,:) = img(:,:,1);
        end;
        fprintf('%d; ',maxSeria-seria);
    end;
disp('OK');
end

