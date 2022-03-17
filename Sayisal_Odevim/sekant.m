% x^3+x^2-12*x fonksiyonun [2 4] baþlangýç deðerlerini kullanarak
% tolerans=0.0001 için Sekant yöntemi ile çözümü 
% format long þeklinde çalýþtýrýlýnca 6. iterasyonda xyeni deðerini
%  2.999999999989403 buluyor.
% Merve KORKMAZ , Bilgisayar Mühendisliði Yüksek Lisans öðrencisi
% 06.10.2021 Tarihinde verilen ödevin çözümü
alt=2;
ust=4;
tolerans=0.0001;
fark=1;
iter=0;
while (fark > tolerans)
fx= @(x) x^3+x^2-12*x;
xyeni=(alt*fx(ust)-ust*fx(alt))/(fx(ust)-fx(alt));
if abs (xyeni-ust) < tolerans 
break
end
alt=ust;
ust=xyeni;
iter=iter+1;
end
iter 
xyeni