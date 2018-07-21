



 function [y] = One(X0, a, c, m ,N)
 y = zeros (1,N);
 
 y(1) = X0;

 for i = 2 : N
 
  y(i) = mod(a*(y(i-1))+(c),m);
  
  endfor
  
endfunction


