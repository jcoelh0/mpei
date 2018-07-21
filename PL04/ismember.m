function [r] = ismember (B, elem, k)
  %r é Boolean
  r = true;
  
  for i=1:k
    hashCode = ...
    if B(hashCode) == 0
      r=false;
      break;
    end
  end
endfunction