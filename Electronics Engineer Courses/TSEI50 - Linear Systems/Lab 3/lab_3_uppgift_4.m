N1 = 8192;
N2 = 10004;
N3 = 16384;
n1=0:(N1-1);
n2=0:(N2-1);
n3=0:(N3-1);

% "For both x(n) = cos(0.25*pi*n)"
x1 = cos(0.25*pi*n1);
x2 = cos(0.25*pi*n2);
x3 = cos(0.25*pi*n3);

% "and x(n) = cos(0.249*pi*n)"
x4 = cos(0.249*pi*n1);
x5 = cos(0.249*pi*n2);
x6 = cos(0.249*pi*n3);

% Quantaize samples to 10 bits
B = 10;
Y1 =  round(x1*2^(B-1))/2^(B-1);
    %Y2 =  round(x2*2^(B-1)/2^B-1);
    %Y3 =  round(x3*2^(B-1)/2^B-1);
Y4 =  round(x4*2^(B-1))/2^(B-1);
    %Y5 =  round(x5*2^(B-1)/2^B-1);
    %Y6 =  round(x6*2^(B-1)/2^B-1);




% compute the spectra for Q(x(n) = cos(0.25*pi*n))
L1 = 20*log10(2*abs(Y1)/N1); 
% compute the spectra for Q(x(n) = cos(0.249*pi*n))
L2 = 20*log10(2*abs(Y4)/N1);

%Plot the spectra in dB scale
subplot(2,1,1);
plot(L1);
title('0.25*pi*n quantized (10 bits), N = 8192, [dB scale]')
xlabel('N points');
ylabel('dB')

subplot(2,1,2);
plot(L2);
title('0.249*pi*n quantized (10 bits), N = 8192, [dB scale]')
xlabel('N points');
ylabel('dB')

figure();

%Define blackman-harris, fft for quantized signals
w1 = window(@blackmanharris,N1)';
X1=fft(Y1.*w1,N1);
X4=fft(Y4.*w1,N1);

%Compute spectra in dB scale, quantized with respect to blackmanharris
L3 = 20*log10(2*abs(X1)/N1);
L4 = 20*log10(2*abs(X4)/N1);

%Plot the spectra in dB scale, with blackmanharris window
subplot(2,1,1);
plot(L3);
title('0.25*pi*n quantized (10 bits), N = 8192, [Blackmanharris]')
xlabel('N points');
ylabel('dB')

subplot(2,1,2);
plot(L4);
title('0.249*pi*n quantized (10 bits), N = 8192, [Blackmanharris]')
xlabel('N points');
ylabel('dB')

