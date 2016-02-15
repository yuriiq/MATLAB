function saveVideo(data, outDir)
% data = zeros(Y,X,Z);
    disp('saveVideo');
    writer = video.MultimediaFileWriter('Filename', [outDir 'result.avi'], ...
        'AudioInputPort', false, 'VideoInputPort', true, ...
        'FrameRate', 1);
    sizeData = size(data);
    Y = sizeData(1);
    X = sizeData(2);
    Z = sizeData(3);
    minD = min3D(data);
    maxD = max3D(data) - minD;
    frame = zeros(Y,X,3);
    for z = 1:Z
        dlmwrite([outDir 'vdata' int2str(z) '.txt'], data(:,:,z));
        frame(:,:,1) = (data(:,:,z)- minD)/maxD;
		frame(:,:,2) = 1;
		frame(:,:,3) = 1;
        frame = hsv2rgb(frame);
        step(writer, frame);
    end;
    release(writer);
end