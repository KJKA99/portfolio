%f = 1; 

%T= 1/f; 

%w = 2*pi*f; 

wT = linspace(0,pi,2);
w0T = 0.5*pi; 


%r = 0.01;
r = 1;

B1 = [1,(-r*(exp(1i.*w0T)+exp(-1i.*w0T))),r^2]; 

A1 = [1,0,0]; 

u=roots(A1);
o=roots(B1);



freqz(A1,B1,wT); 

zplane(u,o); 

