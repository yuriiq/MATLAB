function [ data ] = getobj3D( data, mask )
% —читает образец относительно подложки 
disp('getobj3D');
s = size(data);
Z = s(3);
for z=1:Z
    dataZ(:,:) = data(:,:,z);
    dataZ = subObject( dataZ, mask );
    data(:,:,z) = dataZ(:,:);
	fprintf('%d; ', Z-z);
end;
disp('OK');
end

