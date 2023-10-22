N = 1:8;
y = 0
for k = 0:7
    y = 0; 
    for n = 0:7
        x = sin(0.25*pi*n) + 0.75*cos(0.5*pi*n+(0.05*pi)) + 0.5*sin(0.75*pi*n+(0.1*pi));
        y = y + x*exp((-1i.*2.*pi.*n.*k)/5)
    end
    y
end


y =

   0.0858 - 1.5490i


y =

  -0.9656 - 1.5490i


y =

   0.0580 - 0.8053i
