function retP = findMaxAlpha( phase, pMin, pMax, pStep )
maxAlpha = 0;
retP = pMin;
if numel(pMin) == 3 && numel(pMax) == 3 && numel(pStep) == 3
    for p1=pMin(1):pStep(1):pMax(1)
        for p2=pMin(2):pStep(2):pMax(2)
            for p3=pMin(3):pStep(3):pMax(3)
                retA = alpha([p1,p2,p3], phase);
                if maxAlpha < retA
                    retP = [p1,p2,p3];
                    maxAlpha = retA;
                end
            end
        end
    end
end
if numel(pMin) == 2 && numel(pMax) == 2 && numel(pStep) == 2
    for p1=pMin(1):pStep(1):pMax(1)
        for p2=pMin(2):pStep(2):pMax(2)
                retA = alpha([p1,p2], phase);
                if maxAlpha < retA
                    retP = [p1,p2];
                    maxAlpha = retA;
                end
        end
    end
end
if numel(pMin) == 1 && numel(pMax) == 1 && numel(pStep) == 1
    for p1=pMin(1):pStep(1):pMax(1)
        retA = alpha(p1, phase);
        if maxAlpha < retA
            retP = p1;
            maxAlpha = retA;
        end
    end
end
end


