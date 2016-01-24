function [ mu ] = getMuByP( signal, p )
% ��������� ������� ������� ����� ��� ������
    image = abs(fft(signal));
    x = getMaxIndSpectr( image );
    mu = p(1)*x + p(2);
end

