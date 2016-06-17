function  makeAlphaImg( ~ )
%sigImg = imread('curr.bmp') ;
%[Z, ~, ~]= size(sigImg);
Z = 50;
Zmin = 41;
N = 125;
p = [0.35 0.00151];
phi = pi/2;
nu = 0;
sig = getGigN( N, nu, p, phi );
phase = getPhase(sig) ;
alphaAr = makeAlpha( phase, [0.2 -0.003], [0.001 0.00002], [0.50 0.005] );
maxAlpha = max(max(alphaAr));
for z = Zmin:Z
    % sig = double( sigImg(z,:,1)) ;
    nu = 0.01*pi*z;
    for zz = 1:z
        disp([z, z-zz]);
        sig = getGigN( N, nu, p, phi );
        phase = getPhase(sig) ;
        tmp = makeAlpha( phase, [0.2 -0.003], [0.001 0.00002], [0.50 0.005] );
        if (zz==1), alphaAr = zeros(size(tmp)); end;
        alphaAr = alphaAr + tmp;
    end;
    alphaAr = alphaAr / (maxAlpha*z);
    [X Y ] = size(alphaAr);
    img = zeros(X,Y,3);
    for x = 1:X
        for y = 1:Y
            img(x,y,1) = alphaAr(x,y);
            img(x,y,2) = 1;
            img(x,y,3) = 1;
        end
    end
    img = hsv2rgb(img);
    imwrite(img,['alpha' int2str(z) '.bmp']);
end
end

