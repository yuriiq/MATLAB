function [ mu ] = getMuByP( signal, p )
% ��������� ������� ������� ����� ��� ������
    image = abs(fft(signal));
    x = getMaxInd( image );
    mu = p(1)*x + p(2);
end

