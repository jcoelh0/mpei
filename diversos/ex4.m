%%

n=20

probs=[];
for i=0:n
    p=moeda(i,n,N,0.5)
    probs=[probs p] ;
    
end

stem(0:n, probs)
