function [ id , Mu] = gradTable( sizeSig, start, finish, step )
% ���������� ������� ��� ����������� �������
    sizeTab = round((finish - start ) / step);
    id = zeros(1,sizeTab);
    Mu = zeros(1,sizeTab);
    x = 1:1:sizeSig;
    for i=1:sizeTab
        mu = step*i + start;
        y = x*mu;
        signal = cos(y);
        image = abs(fft(signal));
        id(x) = getMaxIndSpectr( image );
        Mu(x) = mu;
    end
end
