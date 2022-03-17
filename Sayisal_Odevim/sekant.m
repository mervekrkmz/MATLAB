% x^3+x^2-12*x fonksiyonun [2 4] ba�lang�� de�erlerini kullanarak
% tolerans=0.0001 i�in Sekant y�ntemi ile ��z�m� 
% format long �eklinde �al��t�r�l�nca 6. iterasyonda xyeni de�erini
%  2.999999999989403 buluyor.
% Merve KORKMAZ , Bilgisayar M�hendisli�i Y�ksek Lisans ��rencisi
% 06.10.2021 Tarihinde verilen �devin ��z�m�
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