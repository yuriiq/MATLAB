function saveVideoX(inDir)
% data = zeros(Y,X,Z);
    writer = VideoWriter( [inDir 'testData.avi']);
    writer.FrameRate = 8;
    open(writer);
    Z = 391;
    f = figure('Renderer','zbuffer', 'Position',[10 100 800 640]);
    % set(gca,'NextPlot','replaceChildren');
    for z = 1:Z 
        fileName = [inDir  'vdata'  int2str(z)  '.txt'];
        data = dlmread(fileName);
        [X Y] = size(data);
        baseX = round(X/2);
        graph = zeros(1,Y);
        for y=1:Y
            graph(y) = data(baseX,y);
        end;
        plot(graph);
        axis( [ -1, Y+1, -25, 20 ] );
        frame = getframe(f);
        writeVideo(writer,frame);
    end
    close(writer);
end