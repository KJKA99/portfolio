

n = (-20:1:20);

x = (0.9.^n).*((n>=0)-(n>=15)); 
stem(n,x);
xlabel('a)','FontName','times','fontSize',18); 
%%
x = (sin(0.25*pi*n+0.1));
stem(n,x);

%% 
% a)
x1 = (0.9.^n).*(n>=0);
x2 = (0.8.^n).*(n>=2);

subplot(2,1,1)
stem(n,x1)
subplot(2,1,2)
stem(n,x2)

%%

x3 = x1 + x2;
stem(n, x3)
%% 

x4 = x1.*x2;
stem(n, x4)
%% 


x5 = (0.9.^(n-5)).*((n-5)>=0);
stem(n, x5)
%% 

x6= x1;
stem(-n, x6);

%%
n = (0:1:4);
x = zeros(size(n));
x(n<=4) = n;
h = zeros(size(n));
h(1) = 1;
h(2) = 2;
h(3) = 2;
y = conv(x,h);
stem(y)

%%


a1 = -0.3610379;
a2 = -0.4786543;
y2=0;
y3=0;
x1=0;
x2=0;
x3=0;
x =[1 zeros(1,1000)];
y = [];
for n=1:1001
    input=x(n);
    x3=(a1.*(y2-x(n))+x(n));
    x2=(a2.*(y3-x3))+y3;
    x1=(a2.*(y3-x3))+x3;
    y(n)=(a1.*(y2-x(n)))+y2;
    y2 = x2;
    y3 = x1;
end
sum(y)
E=0;
for n=1:1001
E=E+y(n).*y(n);
end
E




