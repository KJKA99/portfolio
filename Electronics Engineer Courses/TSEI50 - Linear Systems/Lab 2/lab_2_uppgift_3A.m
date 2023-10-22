wT = linspace(0,pi,2001);

a0 = 0.00891905342725;
a1 = 0.01067677307842;
a2 = 0.02206621636788;
a3 = 0.02082781458465;
a4 = 0.02206621636788;
a5 = 0.01067677307842;
a6 = 0.00891905342725;

b1 = -3.25871965943552;
b2 = 5.40811082492794;
b3 = -5.37001371103694;
b4 = 3.33923666963572;
b5 = -1.21769664332873;
b6 = 0.20444044173525;
A = [a0,a1,a2,a3,a4,a5,a6];
B = [1,b1,b2,b3,b4,b5,b6];
%n = 0:500;
L1 = 100;
L2 = 250;
L3 = 500;
L4 = 750;
L5 = 1000;
x1 = [1 zeros(1,L1)];
x2 = [1 zeros(1,L2)];
x3 = [1 zeros(1,L3)];
x4 = [1 zeros(1,L4)];
x5 = [1 zeros(1,L5)];
%x(n) = dirac(n);

% filter(b,a,x) filters the input data x using a rational transfer function defined by the numerator
% and denominator coefficients b and a.
%
y1 = filter(A,B,x1);
y2 = filter(A,B,x2);
y3 = filter(A,B,x3);
y4 = filter(A,B,x4);
y5 = filter(A,B,x5);

freqz(y1,1,wT);
title('L = 100');
figure();
freqz(y2,1,wT);
title('L = 250');
figure();
freqz(y3,1,wT);
title('L = 500');
figure();
freqz(y4,1,wT);
title('L = 750');
figure();
freqz(y5,1,wT);
title('L = 1000');
figure();
%% 
%---------------------------------------------------------------------
%2B;
%---------------------------------------------------------------------
%f = 1; 

%T= 1/f; 

%w = 2*pi*f; 

wT = linspace(0,pi,2001);

a0 = 0.00891905342725;
a1 = 0.01067677307842;
a2 = 0.02206621636788;
a3 = 0.02082781458465;
a4 = 0.02206621636788;
a5 = 0.01067677307842;
a6 = 0.00891905342725;

b1 = -3.25871965943552;
b2 = 5.40811082492794;
b3 = -5.37001371103694;
b4 = 3.33923666963572;
b5 = -1.21769664332873;
b6 = 0.20444044173525;
A = [a0,a1,a2,a3,a4,a5,a6];
B = [1,b1,b2,b3,b4,b5,b6];

H = freqz(A,B,wT);

plot(wT,abs(H));
title('Absolute value of frequency response');
xlabel('wT');
ylabel('Abs(H)');

figure();

subplot(2,1,1);
plot(wT,20*log10(abs(H)));
title('Absolute value of frequency response [Log scale]');
xlabel('wT');
ylabel('Abs(H),dB');

subplot(2,1,2);
plot(wT, angle(H));
title('Phase value');
xlabel('wT');
ylabel('Phase [Arg]');



