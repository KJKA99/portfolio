x=[0 1 2 3 4];
h=[1 2 2 0 0];

%-------3--------------------------------%
y=conv(x,h);
subplot(1,1,1)
stem(y);
line([-20 20],[0 0]);
set(gca,'FontName','times','FontSize',16);
ylabel('X1(n)','FontName','times','FontSize',18);
