% f(x) = x.e^-x+x^3+1 fonksiyonunun k�k�n� ?s =2*10^-6 duyarl�l�kla bulal�m
%Not: Grafik y�nteminde, [-1,0] aral��� i�in kabaca sonu� x=-0.51
%�kiye b�lme y�ntemi ile bulunmas�
xa=-1;
xu=0;
tolerans=2e-6;
fx= @ (x) x*exp(-x)+x^3+1;
iterasyon=0;
while (abs(xa-xu)>tolerans)
    xo=(xa+xu)/2;
    if(fx(xa)*fx(xo)<0)
        xu=xo;
    else
        xa=xo;
    end
    iterasyon=iterasyon+1;
end
iterasyon
kok=(xa+xu)/2
fx(kok)
