n=-20:20;
%-------2a--------------------------------%
x1=(0.9.^n).*(n>=0);
x2=(0.8.^n).*(n>=2);

subplot(6,1,1)
stem(n,x1);
line([-20 20],[0 0]);
set(gca,'FontName','times','FontSize',16);
ylabel('X1(n)','FontName','times','FontSize',18);



subplot(6,1,2)
stem(n,x2);
line([-20 20],[0 0]);
set(gca,'FontName','times','FontSize',16);
ylabel('X2(n)','FontName','times','FontSize',18);
%-------2b--------------------------------%
x3=(x1)+(x2);
subplot(6,1,3)
stem(n,x3);
line([-20 20],[0 0]);
set(gca,'FontName','times','FontSize',16);
ylabel('X1(n)+X2(n)','FontName','times','FontSize',18);
%-------2c--------------------------------%
x4=(x1).*(x2);
subplot(6,1,4)
stem(n,x4);
line([-20 20],[0 0]);
set(gca,'FontName','times','FontSize',16);
ylabel('X1(n)+X2(n)','FontName','times','FontSize',18);
%-------2d--------------------------------%
x5=x1;
subplot(6,1,5)
stem(n+5,x5);
line([-20 20],[0 0]);
set(gca,'FontName','times','FontSize',16);
ylabel('X1(n)+X2(n)','FontName','times','FontSize',18);
%-------2e--------------------------------%
x6=x1;
subplot(6,1,6)
stem(-n,x6);
line([-20 20],[0 0]);
set(gca,'FontName','times','FontSize',16);
ylabel('X1(n)+X2(n)','FontName','times','FontSize',18);