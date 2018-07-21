
subplot(1,2,1)
N=1e6;
[X,Y]=BoxMuller(N);
hist(X,30)
title(['Box-Muller' ]);
ax=axis;
ax(1)=10; ax(2)=20;
axis(ax)

subplot(1,2,2)
Y = sqrt(2) * randn(1, N)+14;
hist(Y,30)
title(['Randn']);
ax=axis;
ax(1)=10; ax(2)=20;
axis(ax)