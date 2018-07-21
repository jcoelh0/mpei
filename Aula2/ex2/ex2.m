pT = 2e-10

p = 0.5
N = 10
n = 10

moedas = rand(nCaras,N) > p;
caras = (moedas == 1);
nCaras = (sum(caras))
x = (nCaras == n)
cf = sum(x)
pE = cf/N





%%
N=1e6;
l=rand(11,N)>0.5;

nCarasEm10=sum(l(1:10,:));
nCarasEm11=sum(l);

kB=sum(nCarasEm10==10)
kAB=sum(nCarasEm11==11)

p=kAB/kB



