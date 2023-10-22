%f = 1; 

%T= 1/f; 

%w = 2*pi*f; 

wT = linspace(0,pi,1000);
w0T = 0.9.*pi; 


%r = 0.01;
r = 0.1;
r1 = 0.5;
r2 = 0.8;
r3 = 0.001;
r4 = 100;
B1 = [1,(-r*(exp(1i*w0T)+exp(-1i*w0T))),r^2]; 
B2 = [1,(-r1*(exp(1i*w0T)+exp(-1i*w0T))),r1^2];
B3 = [1,(-r2*(exp(1i*w0T)+exp(-1i*w0T))),r2^2];
B4 = [1,(-r3*(exp(1i*w0T)+exp(-1i*w0T))),r3^2];
B5 = [1,(-r4*(exp(1i*w0T)+exp(-1i*w0T))),r4^2];
A1 = [1,0,0]; 

u=roots(A1);
o=roots(B1);
o1=roots(B2);
o2=roots(B3);
o3=roots(B4);
o4=roots(B5);



H1 = freqz(A1,B1,wT); 
H2 = freqz(B1,A1,wT); 

%zplane(u,o); 
%zplane(u,o1);
zplane(u,o2);
%zplane(u,o3); 
%zplane(u,o4);



%plot(wT,abs(H1))

%plot(wT,abs(H2))

