function  makeVideo( ~ )
writerObj = VideoWriter('newfile.avi');
writerObj.FrameRate = 10;
open(writerObj);
Z = 50;
for z = 1:Z
    frame = imread(['alpha' int2str(z) '.bmp']);
    writeVideo(writerObj,frame);
end
close(writerObj);
end

