function [ minA ] = min3D( A )
% �������
[X Y Z] = size(A);
minA = A(1,1,1);
for x=1:X
	for y=1:Y
        for z=1:Z
            if A(x,y,z) < minA , minA = A(x,y,z); end;
        end;
	end;
end;
end

