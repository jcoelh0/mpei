function X = Bernoulli(p ,n, N)

Bern = rand(n,N)<= p ; 

X = sum(Bern);
endfunction

