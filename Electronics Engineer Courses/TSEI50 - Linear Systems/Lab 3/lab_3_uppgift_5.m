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
C = 16;
Y1 =  round(x1*2^(B-1))/2^(B-1); % 10 bits 0.25
Y2 =  round(x1*2^(C-1))/2^(C-1); % 16 bits 0.25


Y3 =  round(x1*2^(C-1))/2^(C-1); % 10 bits 0.249
Y4 =  round(x4*2^(B-1))/2^(B-1); % 16 bits 0.249

   



% compute the spectra for Q(x(n) = cos(0.25*pi*n))
L1 = 20*log10(2*abs(Y1)/N1); % 10 bits
L2 = 20*log10(2*abs(Y2)/N1); % 16 bits
% compute the spectra for Q(x(n) = cos(0.249*pi*n))
L3 = 20*log10(2*abs(Y3)/N1); % 10 bits
L4 = 20*log10(2*abs(Y4)/N1); % 16 bits

%Plot the spectra in dB scale
subplot(4,1,1);
plot(L1); %10 bits 0.25
title('Spectra 0.25*pi*n quantized (10 bits), N = 8192, [dB scale]')
xlabel('N points');
ylabel('dB');

subplot(4,1,2);
plot(L2);  %16 bits 0.25
title('Spectra 0.25*pi*n quantized (16 bits), N = 8192, [dB scale]')
xlabel('N points');
ylabel('dB');

subplot(4,1,3);
plot(L3); %10 bits 0.249
title('Spectra 0.249*pi*n quantized (10 bits), N = 8192, [dB scale]')
xlabel('N points');
ylabel('dB');

subplot(4,1,4);
plot(L4); %16 bits 0.249
title('Spectra 0.249*pi*n quantized (16 bits), N = 8192, [dB scale]')
xlabel('N points');
ylabel('dB');
figure();


%Define blackman-harris, fft for quantized signals
w1 = window(@blackmanharris,N1)';
X1=fft(Y1.*w1,N1); % 10 bits 0.25
X2=fft(Y2.*w1,N1); % 16 bits 0.25
X3=fft(Y3.*w1,N1); % 10 bits 0.249
X4=fft(Y4.*w1,N1); % 16 bits 0.249

%Compute spectra in dB scale, Not quantizeddB
L5 = 20*log10(2*abs(X1)/N1); % 10 bits 0.25
L6 = 20*log10(2*abs(X2)/N1); % 16 bits 0.25
L7 = 20*log10(2*abs(X3)/N1); % 10 bits 0.249
L8 = 20*log10(2*abs(X4)/N1); % 16 bits 0.249

%Plot the spectra in dB scale, with blackmanharris window
subplot(4,1,1); %10 bits 0.25
plot(L5);
title('Spectra 0.249*pi*n quantized (16 bits), N = 8192, [Blackmanharris]')
xlabel('N points');
ylabel('dB');

subplot(4,1,2); %16 bits 0.25
plot(L6);
title('Spectra 0.249*pi*n quantized (16 bits), N = 8192, [Blackmanharris]')
xlabel('N points');
ylabel('dB');

subplot(4,1,3);%10 bits 0.249
plot(L7);
title('Spectra 0.249*pi*n quantized (16 bits), N = 8192, [Blackmanharris]')
xlabel('N points');
ylabel('dB');

subplot(4,1,4);%16 bits 0.249
plot(L8);
title('Spectra 0.249*pi*n quantized (16 bits), N = 8192, [Blackmanharris]')
xlabel('N points');
ylabel('dB');

