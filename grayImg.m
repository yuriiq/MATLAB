function [ ret ] = grayImg( img )
% Делает картинку серой
 [X Y Z] = size(img);
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

