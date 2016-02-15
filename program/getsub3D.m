function [ data ] = getsub3D( data, mask )
% Заполняет дыру в подложке 
disp('getsub3D');
s = size(data);
Z = s(3);
for z=1:Z
    dataZ(:,:) = data(:,:,z);
    dataZ = substrate( dataZ, mask );
    data(:,:,z) = dataZ(:,:);
	fprintf('%d; ', Z-z);
end;
end

