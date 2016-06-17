function line = getLine( phi, p, N )
    [~, I] = size(p);
    line = zeros(1, N);
    for n=1:N
        sumP = phi;
        for i=1:I
            sumP = sumP + p(i) * power(n-N/2, i);
        end
        line(n)=sumP;
    end
end

