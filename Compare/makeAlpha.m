function [ alphaAr ] = makeAlpha( phase, pMin, pStep, pMax )
X = round((pMax(1) - pMin(1)) / pStep(1));
Y = round((pMax(2) - pMin(2)) / pStep(2));
alphaAr = zeros(X,Y);
for x = 1:X
	p(1) = x*pStep(1)+pMin(1);
    for y=1:Y
        p(2) = y*pStep(2)+pMin(2);
        alphaAr(x,y) = alpha(p,phase);
    end
end
end

