n=-20:20;
%u = heaviside(n);



%heaviside(0) = 1;
x1=(0.9.^n).*((n>=0) - (n>=15));
%x1=(0.9.^n).*(u(n)-u(n-15));
subplot(2,1,1)
stem(n,x1);
line([-20 20],[0 0]);
set(gca,'FontName','times','FontSize',16);
ylabel('x_1(n)','FontName','times','FontSize',18);




x2=sin(0.25.*pi.*n+0.1);
subplot(2,1,2)
stem(n,x2);
line([-20 20],[0 0]);
set(gca,'FontName','times','FontSize',16);
ylabel('x_2(n)','FontName','times','FontSize',18);