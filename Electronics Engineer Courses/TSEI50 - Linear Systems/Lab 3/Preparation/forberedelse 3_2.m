%sin(0.25*pi*n)
%0.75*cos(0.5*pi*n+(0.05*pi));
%0.5*sin(0.75*pi*n+(0.1*pi));
n = 0:7;


x = sin(0.25*pi*n) + 0.75*cos(0.5*pi*n+(0.05*pi)) + 0.5*sin(0.75*pi*n+(0.1*pi));
plot(x,n);
%x1= sin(0.25*pi*n) + 0.75*cos(0.5*pi*n+(0.05*pi)) + 0.5*sin(0.75*pi*n+(0.1*pi));

e1 = e^((-j*pi*k)/4)
e2 = e^((-j*pi*k*2)/2)
e3 = e^((-j*pi*k*3)/4)
e4 = e^(-j*pi*k)
e5 = e^((-j*pi*k*5)/4)
e6 = e^((-j*pi*k*6)/4)
e7 = e^((-j*pi*k*7)/4)


syms k x
F1 = symsum(k^2,k,0,10):

F1;
