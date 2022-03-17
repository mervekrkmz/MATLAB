% f(x) = x.e^-x+x^3+1 fonksiyonunun k�k�n� ?s =2*10^-6 duyarl�l�kla bulal�m
%Not: Grafik y�nteminde, [-1,0] aral��� i�in kabaca sonu� x=-0.51
%Regula Falsi y�ntemi ile bulunmas�
a=-1;
b=0;
tolerans=2e-6;
fx= @ (x) x*exp(-x)+x^3+1;
iterasyon=0;
x1=(a*fx(b)-b*fx(a))/(fx(b)-fx(a));
while (abs (fx(x1))>tolerans)
   x1=(a*fx(b)-b*fx(a))/(fx(b)-fx(a));
    if(fx(a)*fx(x1)<0)
        b=x1;
    else
        a=x1;
    end
    iterasyon=iterasyon+1;
end
iterasyon
x1
fx(x1)
