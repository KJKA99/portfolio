% Uppgift 1 %
close all

N = 8;
n = 0:1000;
i1 = sin(0.25*pi.*n);
i2 = 0.75*cos((0.5*pi*n)+0.05*pi);
i3 = 0.5*sin((0.75*pi*n)+0.1*pi);
x = i1+i2+i3;
X=fft(x,N);

subplot(2,1,1);
stem(abs(X));       % |x|
ylabel('abs','FontName','times','fontSize',18); 
subplot(2,1,2);
stem(angle(X));     %
ylabel('angle','FontName','times','fontSize',18); 

% COMPARE THE ABS AND ANGLE OF PREP 2 %
% COMPARE THE ABS AND ANGLE OF PREP 2 %

%% 
% Uppgift 2-A %
close all

N1 = 8192;          % Default sample rate
N2 = 10004;
N3 = 16384;
n1=0:(N1-1);
n2=0:(N2-1);
n3=0:(N3-1);
x1 = cos(0.25*pi*n1);
x2 = cos(0.25*pi*n2);
x3 = cos(0.25*pi*n3);
% Calculate N-point DFT
X1=fft(x1,N1);
X2=fft(x2,N2);
X3=fft(x3,N3);
% Quantity of the Y-axis with log-scale
L1 = 20*log10(2*abs(X1)/N1);
L2 = 20*log10(2*abs(X2)/N2);
L3 = 20*log10(2*abs(X3)/N3);

subplot(3,1,1);
plot(L1);
xlabel('N1 (8192)','FontName','times','fontSize',18);
ylabel('Ampl spect','FontName','times','fontSize',12); 
subplot(3,1,2);
plot(L2);
%plot(X2);
xlabel('N2 (10004)','FontName','times','fontSize',18);
ylabel('Ampl spect','FontName','times','fontSize',12); 
subplot(3,1,3);
plot(L3);
xlabel('N3 (16384)','FontName','times','fontSize',18);
ylabel('Ampl spect','FontName','times','fontSize',12); 

%% 
% Uppgift 2-B %
close all

N1 = 8192;
N2 = 10004;
N3 = 16384;
k1 = 0:N1-1;
k2 = 0:N2-1;
k3 = 0:N3-1;
n1=0:(N1-1);
n2=0:(N2-1);
n3=0:(N3-1);
x1 = cos(0.25*pi*n1);
x2 = cos(0.25*pi*n2);
x3 = cos(0.25*pi*n3);
w1 = window(@blackmanharris,N1)';
w2 = window(@blackmanharris,N2)';
w3 = window(@blackmanharris,N3)';
% Calculate N-point DFT
X1=fft(x1.*w1,N1);
X2=fft(x2.*w2,N2);
X3=fft(x3.*w3,N3);
% Quantity of the Y-axis
L1 = 20*log10(2*abs(X1)/N1);
L2 = 20*log10(2*abs(X2)/N2);
L3 = 20*log10(2*abs(X3)/N3);

subplot(3,1,1);
plot(L1);
subplot(3,1,2);
plot(L2);
subplot(3,1,3);
plot(L3);

%% 
% Uppgift 3-A %
close all

N1 = 8192;
N2 = 10004;
N3 = 16384;
n1=0:(N1-1);
n2=0:(N2-1);
n3=0:(N3-1);
x1 = cos(0.249*pi*n1);
x2 = cos(0.249*pi*n2);
x3 = cos(0.249*pi*n3);
% Calculate N-point DFT
X1=fft(x1,N1);
X2=fft(x2,N2);
X3=fft(x3,N3);
% Quantity of the Y-axis
L1 = 20*log10(2*abs(X1)/N1);
L2 = 20*log10(2*abs(X2)/N2);
L3 = 20*log10(2*abs(X3)/N3);

subplot(3,1,1);
plot(L1);
subplot(3,1,2);
plot(L2);
subplot(3,1,3);
plot(L3);

%% 
% Uppgift 3-B %
close all

N1 = 8192;
N2 = 10004;
N3 = 16384;
k1 = 0:N1-1;
k2 = 0:N2-1;
k3 = 0:N3-1;
n1=0:(N1-1);
n2=0:(N2-1);
n3=0:(N3-1);
x1 = cos(0.249*pi*n1);
x2 = cos(0.249*pi*n2);
x3 = cos(0.249*pi*n3);
w1 = window(@blackmanharris,N1)';
w2 = window(@blackmanharris,N2)';
w3 = window(@blackmanharris,N3)';
% Calculate N-point DFT
X1=fft(x1.*w1,N1);
X2=fft(x2.*w2,N2);
X3=fft(x3.*w3,N3);
% Quantity of the Y-axis
L1 = 20*log10(2*abs(X1)/N1);
L2 = 20*log10(2*abs(X2)/N2);
L3 = 20*log10(2*abs(X3)/N3);

subplot(3,1,1);
plot(L1);
subplot(3,1,2);
plot(L2);
subplot(3,1,3);
plot(L3);

%% 
% Uppgift 4 %
close all

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
Y1 =  round(x1*2^(B-1)/2^B-1);
Y4 =  round(x4*2^(B-1)/2^B-1);
% compute the spectra for Q(x(n) = cos(0.25*pi*n))
L1 = 20*log10(2*abs(Y1)/N1);
% compute the spectra for Q(x(n) = cos(0.249*pi*n))
L2 = 20*log10(2*abs(Y4)/N1);

%Plot the spectra in dB scale
subplot(4,1,1);
plot(L1);
subplot(4,1,2);
plot(L2);
%Define blackman-harris, fft for quantized signals
w1 = window(@blackmanharris,N1)';
X1=fft(Y1.*w1,N1);
X4=fft(Y4.*w1,N1);
%Compute spectra in dB scale, Not quantized?
L3 = 20*log10(2*abs(X1)/N1);
L4 = 20*log10(2*abs(X4)/N1);

%Plot the spectra in dB scale, with blackmanharris window
subplot(4,1,3);
plot(L3);
subplot(4,1,4);
plot(L4);

%% 
% Uppgift 5 %
close all

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
Y1 =  round(x1*2^(B-1)/2^B-1); % 10 bits 0.25
Y2 =  round(x1*2^(C-1)/2^C-1); % 16 bits 0.25
Y3 =  round(x1*2^(C-1)/2^C-1); % 10 bits 0.249
Y4 =  round(x4*2^(B-1)/2^B-1); % 16 bits 0.249
   
% compute the spectra for Q(x(n) = cos(0.25*pi*n))
L1 = 20*log10(2*abs(Y1)/N1); % 10 bits
L2 = 20*log10(2*abs(Y2)/N1); % 16 bits
% compute the spectra for Q(x(n) = cos(0.249*pi*n))
L3 = 20*log10(2*abs(Y3)/N1); % 10 bits
L4 = 20*log10(2*abs(Y4)/N1); % 16 bits
%Plot the spectra in dB scale
subplot(8,1,1);
plot(L1); %10 bits 0.25
subplot(8,1,2);
plot(L2);  %16 bits 0.25
subplot(8,1,3);
plot(L3); %10 bits 0.249
subplot(8,1,4);
plot(L4); %16 bits 0.249
%Define blackman-harris, fft for quantized signals
w1 = window(@blackmanharris,N1)';
X1=fft(Y1.*w1,N1); % 10 bits 0.25
X2=fft(Y2.*w1,N1); % 16 bits 0.25
X3=fft(Y3.*w1,N1); % 10 bits 0.249
X4=fft(Y4.*w1,N1); % 16 bits 0.249
%Compute spectra in dB scale, Not quantized?
L5 = 20*log10(2*abs(X1)/N1); % 10 bits 0.25
L6 = 20*log10(2*abs(X2)/N1); % 16 bits 0.25
L7 = 20*log10(2*abs(X3)/N1); % 10 bits 0.249
L8 = 20*log10(2*abs(X4)/N1); % 16 bits 0.249

%Plot the spectra in dB scale, with blackmanharris window
subplot(8,1,5); %10 bits 0.25
plot(L5);
subplot(8,1,6); %16 bits 0.25
plot(L6);
subplot(8,1,7);%10 bits 0.249
plot(L7);
subplot(8,1,8);%16 bits 0.249
plot(L8);

%% 
% Uppgift 6 %
close all

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
x4 = cos(0.249*pi*n1)+0.01*(abs(cos(0.249*pi*n1)).^2);
x5 = cos(0.249*pi*n2);
x6 = cos(0.249*pi*n3);
% Quantaize samples to 10 bits
B = 10;
C = 16;
Y1 =  round(x1*2^(B-1)/2^B-1); % 10 bits 0.25
Y2 =  round(x1*2^(C-1)/2^C-1); % 16 bits 0.25
Y3 =  round(x1*2^(C-1)/2^C-1); % 10 bits 0.249
Y4 =  round(x4*2^(B-1)/2^B-1); % 16 bits 0.249
   
% compute the spectra for Q(x(n) = cos(0.25*pi*n))
L1 = 20*log10(2*abs(Y1)/N1); % 10 bits
L2 = 20*log10(2*abs(Y2)/N1); % 16 bits
% compute the spectra for Q(x(n) = cos(0.249*pi*n))
L3 = 20*log10(2*abs(Y3)/N1); % 10 bits
L4 = 20*log10(2*abs(Y4)/N1); % 16 bits
%Plot the spectra in dB scale
subplot(8,1,1);
plot(L1); %10 bits 0.25
subplot(8,1,2);
plot(L2);  %16 bits 0.25
subplot(8,1,3);
plot(L3); %10 bits 0.249
subplot(8,1,4);
plot(L4); %16 bits 0.249
%Define blackman-harris, fft for quantized signals
w1 = window(@blackmanharris,N1)';
X1=fft(Y1.*w1,N1); % 10 bits 0.25
X2=fft(Y2.*w1,N1); % 16 bits 0.25
X3=fft(Y3.*w1,N1); % 10 bits 0.249
X4=fft(Y4.*w1,N1); % 16 bits 0.249
%Compute spectra in dB scale, Not quantized?
L5 = 20*log10(2*abs(X1)/N1); % 10 bits 0.25
L6 = 20*log10(2*abs(X2)/N1); % 16 bits 0.25
L7 = 20*log10(2*abs(X3)/N1); % 10 bits 0.249
L8 = 20*log10(2*abs(X4)/N1); % 16 bits 0.249

%Plot the spectra in dB scale, with blackmanharris window
subplot(8,1,5); %10 bits 0.25
plot(L5);
subplot(8,1,6); %16 bits 0.25
plot(L6);
subplot(8,1,7);%10 bits 0.249
plot(L7);
subplot(8,1,8);%16 bits 0.249
plot(L8);

%% 
