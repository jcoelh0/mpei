N = 1e4;
p = 0.4;
n = 10;

display('A')
Exp = rand(1,10)>p


display('B')

lan = rand(1,15)>0.5

display('C')

exp = rand(20,N)*(10+4)-4;
hist(exp , 10)