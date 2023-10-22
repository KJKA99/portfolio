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
x1 = cos(0.25*pi*n1);
x2 = cos(0.25*pi*n2);
x3 = cos(0.25*pi*n3);

w1 = window(@blackmanharris,N1)';
w2 = window(@blackmanharris,N2)';
w3 = window(@blackmanharris,N3)';
%w1 = blackmanharris(N1);
%w2 = blackmanharris(N2);
%w3 = blackmanharris(N3);



% Calculate N-point DFT
X1=fft(x1.*w1,N1);
X2=fft(x2.*w2,N2);
X3=fft(x3.*w3,N3);

% Quantity of the Y-axis
L1 = 20*log10(2*abs(X1)/N1);
L2 = 20*log10(2*abs(X2)/N2);
L3 = 20*log10(2*abs(X3)/N3);

%Changed from rectwin to blackmanharris
%wvtool(blackmanharris(N1));
%wvtool(blackmanharris(N2));
%wvtool(blackmanharris(N3));

%Plot like 2A
subplot(3,1,1);
plot(L1);
title(' blackmanharris')
xlabel('N points');
ylabel('?')

subplot(3,1,2);
plot(L2);
title('blackmanharris')
xlabel('N points');
ylabel('?')

subplot(3,1,3);
plot(L3);
title('blackmanharris')
xlabel('N points');
ylabel('?')