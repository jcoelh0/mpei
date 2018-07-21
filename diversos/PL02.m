%ex1:
%(a)
pX=ones(1,6)/6 %ones(1,6)  -> matriz/vetor de 6 1's
x=1:6
subplot(121)
stem(x,pX)    %stem(Xi,p) -> gráfico
axis([-0+.5 8 0 1/6+0.05])
title('pX(x)')
xlabel('xi')
ylabel('pX(x)')

%(b)
pX2=[ 0 pX 0 ]
x=0:7
FX=cumsum(pX2)
subplot(122)
stairs(x,FX)
axis([-0.5 8 0 1.1])
title('FX(x)')
xlabel('x')
ylabel('FX(x)')

%ex2:
%(a)

figure()







%pmf     p
clf
n=5;
p=3/10;

for k=0:5
    pX(k+1) = 
end

stem(0:5, pX)
axis([-0.5 5.5 0 0.5])

%ex3(b)

N = 100;
experiencias = randi(5,1,N)-1

x = 0:4

p = ones(1,5)

for i = x
    p(1,i+1) = sum(experiencias==i)/N;
end

stem(x,p)

E = p*x*

%ex9


















