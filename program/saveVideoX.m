function saveVideoX(inDir)
% data = zeros(Y,X,Z);
    writer = VideoWriter( [inDir 'testData.avi']);
    writer.FrameRate = 2;
    open(writer);
    Z = 51;
    f = figure('Renderer','zbuffer', 'Position',[10 100 800 640]);
    % set(gca,'NextPlot','replaceChildren');
    for z = 1:Z 
        fileName = [inDir  'vdata'  int2str(z)  '.txt'];
        data = dlmread(fileName);
        sizeData = size(data);
        Y = sizeData(1);
        X = sizeData(2);
        baseY = round(Y/2);
        graph = zeros(X);
        for x=1:X
            graph(x) = data(baseY,x);
        end;
        plot(graph);
        axis( [ -1, X+1, -2, 20 ] );
        frame = getframe(f);
        writeVideo(writer,frame);
    end
    close(writer);
end