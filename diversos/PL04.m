function[strs] = gerarChave()
  alfa = char(('a':'z' '0':'9'));
  talfa = length(alfa);
  N = 20;
  i = floor(rand(1,N)*talfa);
  strs = alfa(i);
endfunction