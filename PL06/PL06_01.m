% Codigo base para guiao PL06 MPEI 2016-2017
udata=load('u.data'); % Carrega o ficheiro dos dados dos filmes
% Fica apenas com as duas primeiras colunas
u= udata(1:end,1:2); clear udata;
% Lista de utilizadores
users = unique(u(:,1)); % Extrai os IDs dos utilizadores
Nu= length(users); % Numero de utilizadores
% Constroi a lista de filmes para cada utilizador
Set= cell(Nu,1); % Usa celulas
for n = 1:Nu, % Para cada utilizador
    % Obtemos os filmes de cada um
    ind = find(u(:,1) == users(n));
    % E guarda num array. Usa celulas porque utilizador tem um numero
    % diferente de filmes. Se fossem iguais podia ser um array
    Set{n} = [Set{n} u(ind,2)];
end
%% Calcula a distancia de Jaccard entre todos os pares pela definicao.
% J=zeros(Nu); % array para guardar distancias
% h = waitbar(0,'Calculating');
% for n1= 1:Nu,
%     waitbar(n1/Nu,h);
%     for n2= n1+1:Nu,
%         %% Adicionar codigo aqui
%         J(n1,n2)= length(intersect(Set{n1},Set{n2}))/length(union(Set{n1}, Set{n2}));
%         
%     end
% end
% delete (h)
% %% Com base na distˆancia, determina pares com
% %% distˆancia inferior a um limiar pre-definido
% threshold =0.4 % limiar de decisao
% % Array para guardar pares similares (user1, user2, distˆancia)
% SimilarUsers= zeros(1,3);
% k= 1;
% for n1= 1:Nu,
%     for n2= n1+1:Nu,
%         if J(n1,n2)<threshold
%             SimilarUsers(k,:)= [users(n1) users(n2) J(n1,n2)];
%             k= k+1;
%         end
%     end
% end




Nh=100 ;% numero de funcoes de hash
M=1234567;
a=fix(rand(1,Nh)*M);
b=fix(rand(1,Nh)*M);
w = waitbar(0,'Calculating');
Signature=zeros(Nu);

for user= 1:Nu %all users
     waitbar(user/Nu,w);
    % fh= mod(a(i)*valor +b(i), M)
    
    for hf= 1:Nh %Nh hash funcion
        
        x=Set{user};
        minimo=mod(a(hf)*x(1)+b(hf),M);
        
        for k = 1:length(x) %all films of the user
            hashCode=mod(a(hf)*x(k)+b(hf),M);
            if minimo > hashCode
                minimo=hashCode;
            end
        end
    end

    Signature(hf,user)=minimo;
end
delete (w)

figure
imagesc(Signature); colormap(hot);


Dist=zeros(Nu);

w2 = waitbar(0,'Calculating');
for n1= 1:Nu
    waitbar(n1/Nu,w2);
    
    for n2= n1+1:Nu
        coluna1= Signature(:,n1);
        coluna2= Signature(:,n2);
        
        nElementosIguais=sum(coluna1==coluna2)
        
        Dist(n1,n2)= nElementosIguais/ Nh;
        
    end
    
end

delete (w2)
imagesc(Dist);colormap(grey);


