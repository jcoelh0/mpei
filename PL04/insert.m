function [retval] = insert (B, elem)

for i=1:k
  hashCode = hashFunction(elem)
  %hashCode mod length(B)
 
  B(hashCode) = 1;
  
endfunction
