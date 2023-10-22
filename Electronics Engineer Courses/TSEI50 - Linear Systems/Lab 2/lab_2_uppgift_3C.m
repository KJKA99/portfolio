wT = linspace(0,pi,2001);
w0T = 0.2*pi;
w0T1 = 0.6*pi;

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
n = 0:500;
x1 = sin(w0T*n);
x2 = sin(w0T1*n);


y1 = filter(A,B,x1);
y2 = filter(A,B,x2);

subplot (2,1,1);
plot(y1);
title('System response, wT = 0.2pi ');
xlabel('n');
ylabel('Amplitude');

subplot(2,1,2);
plot(y2);
title('System response, wT = 0.6pi');
xlabel('n');
ylabel('Amplitude');