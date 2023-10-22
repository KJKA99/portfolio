N1 = 8192;
N2 = 10004;
N3 = 16384;
k1 = 0:N1-1;
k2 = 0:N2-1;
k3 = 0:N3-1;
%n = 0:20000;
n1=0:(N1-1);
n2=0:(N2-1);
n3=0:(N3-1);
x1 = cos(0.249*pi*n1);
x2 = cos(0.249*pi*n2);
x3 = cos(0.249*pi*n3);

w1 = window(@rectwin,N1)';
w2 = window(@rectwin,N2)';
w3 = window(@rectwin,N3)';
%w1 = rectwin(N1);
%w2 = rectwin(N2);
%w3= rectwin(N3);

% Calculate N-point DFT
X1=fft(x1,N1);
X2=fft(x2,N2);
X3=fft(x3,N3);

% Quantity of the Y-axis
L1 = 20*log10(2*abs(X1)/N1);
L2 = 20*log10(2*abs(X2)/N2);
L3 = 20*log10(2*abs(X3)/N3);


%wvtool(rectwin(N1));
%wvtool(rectwin(N2));
%wvtool(rectwin(N3));


subplot(3,1,1);
plot(L1);
title('Rectangular window, 0.249*pi*n, N = 8192')
xlabel('N points');
ylabel('dB')

subplot(3,1,2);
plot(L2);
title('Rectangular window, 0.249*pi*n, N = 10004')
xlabel('N points');
ylabel('dB')

subplot(3,1,3);
plot(L3);
title('Rectangular window, 0.249*pi*n, N = 16384')
xlabel('N points');
ylabel('dB')

