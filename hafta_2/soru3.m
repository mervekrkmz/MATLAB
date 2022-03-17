%sin(x)=0.495 fonksiyonun ökünü baþalngýç aralýðý [29 31] alarak ikiye
%bölme yöntemi ile çözümü
%sin^-1 0.04950 yapýlýnca cevap 30.8750 çýkýyor.
xa=29;
xu=31;
tolerans=0.26;
sin = @ (x) 0.495;
iterasyon=0;
while (abs(xa-xu)>tolerans)
    xo=(xa+xu)/2;
    if(sin(xa)*sin(xo)<0)
        xu=xo;
    else
        xa=xo;
    end
    iterasyon=iterasyon+1;
end
iterasyon
kok=(xa+xu)/2
sin(kok)