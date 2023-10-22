N = 8;
%k = 0:N-1;
n = 0:1000;
i1 = sin(0.25*pi.*n);
i2 = 0.75*cos((0.5*pi*n)+0.05*pi);
i3 = 0.5*sin((0.75*pi*n)+0.1*pi);


% k = value on x axis?
x = i1+i2+i3;
X=fft(x,N); 

subplot(2,1,1);
stem(abs(X));
title('Amplitude spectrum, 8-point DFT Coefficient values');
xlabel('N points');
ylabel('[abs] of Ck')


subplot(2,1,2);
stem(angle(X));
title('Phase spectrum, 8-point DFT Coefficient values');
xlabel('N points');
ylabel('phase shift, [arg] of N*Ck')
