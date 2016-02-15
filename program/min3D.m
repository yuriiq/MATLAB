function [ minA ] = min3D( A )
% Минимум
s = size(A);
X=s(1);
Y=s(2);
Z=s(3);
minA = A(1,1,1);
for x=1:X
	for y=1:Y
        for z=1:Z
            if A(x,y,z) < minA , minA = A(x,y,z); end;
        end;
	end;
end;
end

