function Bernoulli = (p , N)

Bernoulli = rand(1,N)> p ; 

endfunction

hist(Bernoulli(0.3,100000), (0:1)')