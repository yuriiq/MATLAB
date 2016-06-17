function retP = findMaxAlpha( phase, pMin, pMax, pStep )
maxAlpha = 0;
retP = pMin;
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

