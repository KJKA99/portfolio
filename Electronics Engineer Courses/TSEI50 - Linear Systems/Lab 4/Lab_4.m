% Uppgift 1 & 2 %

close all

% 705600 samples, 44100 Sample raten (16 444 * 10^3)

[x,Fs] = audioread('lab4.wav');

Y = fft(x, pow2(10));

subplot(2,1,1);

plot(abs(Y));
title('Amplitude spectrum for lab4.wav');
ylabel('Amplitude');
xlabel('sample point');

% Ampltiude spectrum of 16 sec song with 705600 samples 

% We read the file lab4.wav and use audioread to distribute the
% corresponding
% The frequencies are distributed uneaenly with higher in the end and the
% begining. This makes sense when you listen to the audio


%%

% Uppgift 3 %

close all

x=audioread('lab4.wav');

Fs1 = 8192; % Normal sample frequency %

Fs2 = 16384; % Double sample frequency %

Fs3 = 24576;

Fs4 = 32768;

Fs5 = 40960;

Fs6 = 44100; % Normal sample frequency of song %

%soundsc(x,Fs1) % Very slooow :(
soundsc(x,Fs6); % slow but more "normal" frequencies
%soundsc(x,Fs3) % see comment above
%soundsc(x,Fs4) % -II -
%soundsc(x,Fs5)
%soundsc(x,Fs6)


% We see that a slower sample frequency results in a "slower" song

%%

% Uppgift 4 %

close all

x=audioread('lab4.wav');

M1 = 2;

M2 = 4;

M3 = 10;

y=x(1:M3:end);

soundsc(y)

% Bigger M = Faster song :) %
% This is due the fact that fewer equally spaced samples leads to it being shorter
% and  containing less details which makes it a faster song. a.k.a
% aliasing due to undersampling.

%%

% Uppgift 5 %

close all

[x,Fs] = audioread('lab4.wav');

B1 = 1;

B2 = 5;

B3 = 10;

B4 = 13;

y = round(pow2(B4-1)*x)/pow2(B4-1);

soundsc(y, Fs);

% Lower value on B equals to worse "quality" on the song %
% This due to downsampling, where less samples 

%%

% Uppgift 6 A - Low pass filter %

close all

[x,Fs] = audioread('lab4.wav');

wcT = 0.25*pi;

wsT = 0.3*pi;

dc = 0.001;

ds = 0.001;

[N,F,D,W] = firpmord([wcT,wsT],[1 0],[dc ds],2*pi);

h = firpm(2*round(N/2),F,D,W);

y = conv(x,h);

%soundsc(y, Fs); % Low pass filter applied to song

figure(1)

subplot(2,1,1);

plot(abs(fft(x, 2^13))); % Plot the spectrum

title('Amplitude spectrum of X, original signal');
ylabel('Amplitude');
xlabel('sample point');

subplot(2,1,2);

plot(abs(fft(y, 2^13)));
title('Amplitude spectrum of Y, low pass applied');
ylabel('Amplitude');
xlabel('sample point');

figure();

freqz(y); % Magnitude response for FIR filter.  %

% Low pass filter applied to song removes certain freqs %

%%

% Uppgift 6 B - High pass filter %%

close all

[x,Fs1] = audioread('lab4.wav');

wcT = 0.25*pi;

wsT = 0.3*pi;

dc = 0.001;

ds = 0.001;

[N,F,D,W] = firpmord([wcT,wsT],[1 0],[dc ds],2*pi);

h = firpm(2*round(N/2),F,D,W);

hp = firlp2hp(h);

y1 = conv(x,h);

y2 = conv(x,hp);

%soundsc(y2, Fs1);

figure(1)

subplot(2,1,1);

plot(abs(fft(x, 2^13)));
%xlabel('Amplitude spectrum','FontName','times','fontSize',18);
title('Amplitude spectrum of X, original signal');
ylabel('Amplitude');
xlabel('sample point');

subplot(2,1,2);

plot(abs(fft(y2, 2^13)));
title('Amplitude spectrum of X, high pass applied');
ylabel('Amplitude');
xlabel('sample point');

%xlabel('Amplitude spectrum','FontName','times','fontSize',18);

figure(2)
freqz(y); % Magnitude response for filter. Remove %

%%

% Uppgift 7 A %

[x,Fs] = audioread('lab4.wav');


% Attenuation, adds echo and delay
A1 = 0.1;

A2 = 0.2;

A3 = 0.4;

A4 = 0.6;

A5 = 0.8;

A6 = 1;
y = [x' zeros(1,22050)]+A1*[zeros(1,22050) x']; % 
% 22 050 0.5s delay, 44 100, normal, 

%soundsc(y, Fs);

% Adding delay and echo to the song with different A values %

%%

% Uppgift 7 B %

[x,Fs] = audioread('lab4.wav');

A1 = 0.1;

A2 = 0.2;

A3 = 0.4;

A4 = 0.6;

A5 = 0.8;

A6 = 1;

y = [x' zeros(1,44100)]+A6*[zeros(1,44100) x'];

soundsc(y, Fs);

% Changing t0 to Fs 44100 gives a delay of 1 second %

%%

% Uppgift 7 C %

[x,Fs] = audioread('lab4.wav');

A1 = 0.1;

A2 = 0.2;

A3 = 0.4;

A4 = 0.6;

A5 = 0.8;

A6 = 1;

%y = [x' zeros(1,8192)]+A1*[zeros(1,8192) x'];

%y = [x' zeros(1,22050)]+A4*[zeros(1,22050) x'];

%y = [x' zeros(1,44100)]+A6*[zeros(1,44100) x'];

h = [x' zeros(1,44100)]+A6*[zeros(1,44100) x'];

r = [x' zeros(1,22050)]+A6*[zeros(1,22050) x'];

y = conv(r,h);

% high volume, delays on top of each other

soundsc(y, Fs);