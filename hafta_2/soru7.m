% x^3+4*x^2-10 fonksiyonun [1 2] ba�lang�� de�erlerini kullanarak
% tolerans=0.0001 i�in Regula falsi y�ntemi ile ��z�m� 
alt=1;
ust=2;
tolerans=0.001;
fark=1;
iter=0;
while (fark > tolerans)
fx= @(x) x^3+4*x^2-10;
xyeni=(alt*fx(ust)-ust*fx(alt))/(fx(ust)-fx(alt));
if (fx(ust)*fx(xyeni)< 0)
alt=xyeni;
else 
ust=xyeni;
end
fark=abs(fx(xyeni));
iter=iter+1;
end
iter 
xyeni
fx(xyeni)