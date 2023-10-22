%sin(0.25*pi*n)
%0.75*cos(0.5*pi*n+(0.05*pi));
%0.5*sin(0.75*pi*n+(0.1*pi));
n = 0:7;


x = sin(0.25*pi*n) + 0.75*cos(0.5*pi*n+(0.05*pi)) + 0.5*sin(0.75*pi*n+(0.1*pi));
plot(x,n);
%x1= sin(0.25*pi*n) + 0.75*cos(0.5*pi*n+(0.05*pi)) + 0.5*sin(0.75*pi*n+(0.1*pi));