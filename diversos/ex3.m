%% C´odigo 2 - segunda vers˜ao
N= 1e5; %n´umero de experiˆencias
p = 0.5; %probabilidade de cara
k = 6; %n´umero de caras
n = 15; %n´umero de lanc¸amentos
prob =0;
for k=6:n
    prob=prob+ factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)
end
