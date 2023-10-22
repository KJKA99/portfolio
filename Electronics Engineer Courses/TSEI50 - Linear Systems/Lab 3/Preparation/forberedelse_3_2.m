%sin(0.25*pi*n)
%0.75*cos(0.5*pi*n+(0.05*pi));
%0.5*sin(0.75*pi*n+(0.1*pi));
n = 0:7;

x = sin(0.25*pi*n) + 0.75*cos(0.5*pi*n+(0.05*pi)) + 0.5*sin(0.75*pi*n+(0.1*pi));
plot(x,n);
%x1= sin(0.25*pi*n) + 0.75*cos(0.5*pi*n+(0.05*pi)) + 0.5*sin(0.75*pi*n+(0.1*pi));

e = exp((-1i*2*pi*k*n)/8);

e0 = 0;
e1 = exp(((-j*pi*k)/4));
e2 = exp((-j*pi*k*2)/2);
e3 = exp((-j*pi*k*3)/4);
e4 = exp(-j*pi*k);
e5 = exp((-j*pi*k*5)/4);
e6 = exp((-j*pi*k*6)/4);
e7 = exp((-j*pi*k*7)/4);


test = x*e0;
test1 = x*e1;


%syms k x
%%F1 = symsum(x*e,n,0,7);

%%F1;

%U(k) = symsum(sin(j)*exp(-2*pi*1i*j*k/5),j,0,4); % five point DFT of sin(j)
