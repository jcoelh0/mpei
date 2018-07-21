%ex1 (a)

N= 1e5; %numero de experiencias
p = 0.5; %probabilidade de calhar 1 filho rapaz
k = 2; %numero de filhos rapazes
n = 2; %numero total de filhos

lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k;
probSimulacao= sum(sucessos)/N;

N= 1e5; %numero de experiencias
p = 0.5; %probabilidade de calhar 1 filho rapaz
k = 1; %numero de filhos rapazes
n = 2; %numero total de filhos

lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k;
probSimulacao1= sum(sucessos)/N;

probSimulacao+probSimulacao1

%(b)

p = 0.5;
k = 2;
n = 2;
prob= factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)

p = 0.5;
k = 1;
n = 2;
prob1= factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)

prob+prob1

%(c)

N= 1e5; %numero de experiencias
p = 0.5; %probabilidade de calhar outro filho rapaz
k = 1; %numero de filhos rapazes
n = 1; %numero total de filhos
%(como o primeiro já está escolhido, não influencia o n)
lancamentos = rand(n,N) > p;
sucessos= lancamentos==k;
probSimulacao= sum(sucessos)/N

probSimulacao

prob= factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)

%(c) Sabendo que o primeiro filho e rapaz, qual a probabilidade do 
%segundo ser rapaz? O que se pode concluir do resultado obtido?

N= 1e5; %numero de experiencias
p = 0.5; %probabilidade de calhar outro filho rapaz
k = 1; %numero de filhos rapazes
n = 1; %numero total de filhos
%(como o primeiro já está escolhido, não influencia o n)
lancamentos = rand(n,N) > p;
sucessos= lancamentos==k;
probSimulacao= sum(sucessos)/N

prob= factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)

%(d) p=0.5 é a probabilidade de o segundo filho ser rapaz porque como
%o primeiro já está escolhido, nada influencia o outro filho ser rapaz ou
%rapariga

%(e) Considere uma famılia com mais filhos, por exemplo 5, 
%e que sabemos que pelo menos um dos filhos e rapaz. 
%Obtenha usando simulacao uma estimativa para a probabilidade 
%de um dos outros (e apenas um) ser tambem rapaz.

N= 1e5; %numero de experiencias
p = 0.5; %probabilidade ser filho rapaz
k = 1; %numero de filhos rapazes
n = 4; %numero total de filhos
%(como o primeiro já está escolhido, n vai ser 4 e não 5)
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k;
probSimulacao= sum(sucessos)/N

prob= factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)

%(f) Repita a questao anterior, mas considerando a probabilidade 
%de um dos outros ou mais ser/serem tambem rapaz(es).

N= 1e5; %numero de experiencias
p = 0.5; %probabilidade ser filho rapaz
k = 4; %numero de filhos rapazes
n = 4; %numero total de filhos
%(como o primeiro já está escolhido, n vai ser 4 e não 5)
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k;
probSimulacao= sum(sucessos)/N


%2(a)e(c)

N= 1e5; %numero de experiencias
p = 0.5; %probabilidade de cara
k = 10; %numero de caras
n = 10; %numero de lancamentos
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k;
probSimulacao= sum(sucessos)/N

prob= factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)

%(b)e(c)

N= 1e5; %numero de experiencias
p = 0.5; %probabilidade de cara
k = 1; %numero de caras
n = 1; %numero de lancamentos
lancamentos = rand(n,N) > p;
sucessos= lancamentos==k;
probSimulacao= sum(sucessos)/N

prob= factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)

%3

N= 1e5; %numero de experiencias
p = 0.9; %probabilidade de cara
k = 1; %numero de ocorrencia de cancro da mama em cada 1000 mulheres tugas
n = 10000; %numero total de mulheres tugas
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k;
probSimulacao= sum(sucessos)/N

prob= factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)

%4(a)

N = 10;
experiencias = randi([1,100],[20,N]);

for c=1:N
  lancamentos(1,c) = length(unique(experiencias(:,c)));
end

resultados = 20 - lancamentos;
sucessos = resultados == 0;
pFinal = sum(sucessos)/N

%8(a)

casosPossiveis = 3^2;
casosFavoraveis = 1;

prob = casosFavoraveis / casosPossiveis


%(b)
p = 1/3;
n = 2;
prob2=0;
for k=1:2
  prob2 = prob2 + factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k);
  end
  prob2
  
  
%(c)
  
  prob3 = 2/3  
  
%(d)
  "um" e "dois" sao dois acontecimentos independentes logo a sua interceçao
  é zero;desta forma podemos afirmar que P[“sequencia incluir a palavra 
  um” ˆ | “sequencia inclui palavra dois”]= 1/3;
  
  











