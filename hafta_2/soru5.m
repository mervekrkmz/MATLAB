%sin(x)=0.495 fonksiyonun ökünü baþalngýç aralýðý [29 31] alarak 
%tölerasn deðeri 0.02 olacak þekilde Regula Falsi yöntemi ile çözümü
%sin^-1 0.04950 yapýlýnca cevap 30.8750 çýkýyor.
tolerans=0.02;
iter=0;
alt=29;
ust=31;
fark=1;
sin = @(x) 0.495;
while (fark > tolerans)
%fx= @(x) x^3+4*x^2-10;
sin = @ (x) 0.495;
xyeni=(alt*sin(ust)-ust*sin(alt))/(sin(ust)-sin(alt));
if (sin(ust)*sin(xyeni)< 0)
alt=xyeni;
else 
ust=xyeni;
end
fark=abs(sin(xyeni));
iter=iter+1;
end
iter 
xyeni
sin(xyeni)