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
subplot(3,1,1);
plot(wT,abs(H));
title('Absolute value of frequency response');
xlabel('wT');
ylabel('Abs(H)');

subplot(3,1,2);
plot(wT, angle(H));
title('Phase value');
xlabel('wT');
ylabel('Phase [Arg]');

subplot(3,1,3);
plot(wT,20*log10(abs(H)));
title('Absolute value of frequency response [Log scale]');
xlabel('wT');
ylabel('Abs(H),dB');


