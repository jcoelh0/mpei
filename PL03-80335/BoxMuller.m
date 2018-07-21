function[X,Y] = BoxMuller(N)

U1 = rand(1,N); 
U2 = rand(1,N);

X = sqrt(2)*((-2*log(U1)).^(1/2).*cos(2*pi*U2))+14;
Y = (-2*log(U1)).^(1/2).*sin(2*pi*U2);