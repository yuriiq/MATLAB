function saveVideo(data, outDir)
% data = zeros(Y,X,Z);
    disp('saveVideo');
    writer = video.MultimediaFileWriter('Filename', [outDir 'result.avi'], ...
        'AudioInputPort', false, 'VideoInputPort', true, ...
        'FrameRate', 4);
    % writer = VideoWriter( [outDir 'result.avi'], 'Uncompressed AVI');
    % writer.FrameRate = 2;  open(writer);
    [X Y Z] = size(data);
    minD = min3D(data);
    maxD = max3D(data) - minD;
    frame = zeros(X,Y,3);
    for z = 1:Z
        dlmwrite([outDir 'vdata' int2str(z) '.txt'], data(:,:,z));
        frame(:,:,1) = (data(:,:,z)- minD)/maxD;
		frame(:,:,2) = 1;
		frame(:,:,3) = 1;
        frame = hsv2rgb(frame);
        step(writer, frame); 
		%  writeVideo(writer,frame);
        if rem(z,10) == 0, disp(Z-z); end;
    end;
    release(writer);
	% close(writer);
    x = round(X/2);
    dlmwrite([outDir 'X_' int2str(x) '.txt'], data(:,x,:));
end