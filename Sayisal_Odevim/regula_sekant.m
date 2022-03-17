% x^3+x^2-12*x fonksiyonun [2 4] baþlangýç deðerlerini kullanarak
% tolerans=0.0001 için Regula Falsi ve Sekant yönteminin birlikte kullanýlarak çözümü 
% format long þeklinde çalýþtýrýlýnca 34. iterasyonda xyeni deðerini
%  3 buluyor.
% Merve KORKMAZ , Bilgisayar Mühendisliði Yüksek Lisans öðrencisi
% 06.10.2021 Tarihinde verilen ödevin çözümü
%alt deðere Regula Falsi yöntemi ile yaklaþma
%üst deðere Sekant Yöntemi ile yaklaþma
alt=2;
ust=4;
tolerans=0.0001;
fark=1;
iter=0;
while (fark > tolerans)
fx= @(x) x^3+x^2-12*x;
xyeni=(alt*fx(ust)-ust*fx(alt))/(fx(ust)-fx(alt));
if (fx(ust)*fx(xyeni)< 0)
alt=xyeni;
else abs (xyeni-ust) < tolerans 
break
end
xyeni=ust;
iter=iter+1;
end
iter 
xyeni