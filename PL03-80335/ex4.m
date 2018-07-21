N = 100000;
X =Bernoullli(0.5,20,N);
hist(X, (0:20)')

p = zeros (1,20);

for i = 1:20

    p(i) = sum (X == i)/N ;

endfor

p
