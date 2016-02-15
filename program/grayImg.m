function [ ret ] = grayImg( img )
% Делает картинку серой
 imgSize = size(img);
 X = imgSize(1);
 Y = imgSize(2);
 Z = imgSize(3);
 ret = zeros(X,Y);
 for x = 1:X
     for y = 1:Y
         sum = 0;
         for z=1:Z
             sum = sum + img(x,y,z);
         end;
         ret(x,y) = sum / Z;
     end;
 end;
end

