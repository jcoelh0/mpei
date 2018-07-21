N = 100000;
X =Bernoulli(0.3,N);
hist(X, (0:1)')
p= sum(X)/N