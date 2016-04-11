function [ maxA ] = max3D( A )
% Максимум
[X Y Z] = size(A);
maxA = A(1,1,1);
for x=1:X
	for y=1:Y
        for z=1:Z
            if A(x,y,z) > maxA , maxA = A(x,y,z); end;
        end;
	end;
end;
end

