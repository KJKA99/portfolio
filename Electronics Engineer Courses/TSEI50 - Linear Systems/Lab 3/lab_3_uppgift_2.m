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


% Use plot instead of stem to get continous for the curve. We wanted stem
% In the previous task to see values for specific N points

%Q: Why is the spectrum normalized to 0dB via...
% A: 16384 is a multiple of 8192. Which means that they have same period
% 10004 is not a multiple of either of those and will have a diifrent period. 

%Q: Tones att -300dB?
%A: Matlab error

%Q: Identify wT?
%A: The digital frequency wT, Is a value that expresses 
% how much of a cycle of a sinusoidal wave is represented by a sample
% This value is denoted by f . 
% For example, f = 1/2 means that 2 samples of a digital signal correspond to a sinusoidal cycle.
% 

subplot(3,1,1);
plot(L1);
title('Amplitude spectrum, 8192-point DFT Coefficient values [LOG scale]');
xlabel('N points');
ylabel('dB')

subplot(3,1,2);
plot(L2);
title('Amplitude spectrum, 10004-point DFT Coefficient values [LOG scale]');
xlabel('N points');
ylabel('dB')

subplot(3,1,3);
plot(L3);
title('Amplitude spectrum, 16384-point DFT Coefficient values [LOG scale]');
xlabel('N points');
ylabel('dB')

