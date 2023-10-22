%%Sista 4%%%
a1=-0.3610379;
a2=-0.4786544;
x1=0;
x2=0;
x3=0;
y2=0;
y3=0;
x=[1 zeros(1,1000)];
y=[]; %% empty vector

for n=1:1001
   input=x(n);
   x3=(a1.*(y2-x(n))+x(n));
   x2=(a2.*(y3-x3))+y3;
   x1=(a2.*(y3-x3))+x3;
   y(n) = (a1.*(y2-x(n)))+y2;
   y2 = x2;
   y3 = x1;
end
s= sum(y,'all');
s; %% Print out value of S
E=0;
for n=1:1001 %% Print out value of S
    E=E+y(n).*y(n); %% energy sum to its previous value, since its for loop
end
