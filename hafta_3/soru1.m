%fx(x)=3*e^-0.5*x-x fonkisyonun kökünü mutlak hata=0.07
%sýnýrlamasýna göre xo=8 deðerinden baþlayarak Basit 
% iterasyon yöntemi ile çözümü
tol=0.07;
hata=1;
x0=8;
n=0;
while hata>tol
    n=n+1;
    x1=3*exp(-0.5*x0);
    hata=abs(x1-x0);
    x0=x1;
end
n
hata
x=x0
fx=3*exp(-0.5*x)-x