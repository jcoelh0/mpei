%  1-(a)

%N=10  ;   %num experiencias

N=1e6

e=rand(2,N);
% 1 = rapaz

filhos=e >0.5;
numRapazes=sum(filhos);
%acontecimento "1 ou mais rapazes"
casosFavoraveis=numRapazes >=1;
p=sum(casosFavoraveis)/N

ps=cumsum(casosFavoraveis)./(1:N);



%(c) Suponha agora que uma fam´ılia (com os referidos 2 filhos) escolhida ao acaso tem um rapaz (ou
%    mais). Qual a probabilidade do outro filho ser tambem rapaz? Obtenha o valor aplicando primeiro a ´
%    definic¸ao frequencista e de seguida a teoria cl ˜ assica, se aplic ´ avel.

kAB = sum ( sum(filhos) ==2)
kB = sum(sum(filhos) >=1)

p=kAB/kB

pteorica=1/3
%dá 1/3 pq temos CF={MM}
        %e Casos Possíveis {MM,FM,MF}
fprintf('p por simulacao = %.10f;\n\t valor')



%(d)


%(e)

N=1e6;
numFilhos=5;
pRapaz=0.5

filhos=rand(numFilhos,N) >pRapaz;

kAB = sum ( sum(filhos) ==2 ) 
kB = sum(sum(filhos)>=1)

p= kAB /kB

fprintf('p por simulacao = %.10f\n',p);

%(d)

