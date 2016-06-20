function [retP, maxAlpha] = findMaxAlphaS( phase, pStart  )
[retP,maxAlpha] = fminsearch(@(x) -alpha(x,phase), pStart); 
maxAlpha = -maxAlpha;
end

