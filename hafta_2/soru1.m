%x^2-5 fonksiyonunun [1 3] aralýðýnda 0.13 tölerans deðerine göre ikiye
%bölme yöntemi ile çözümü
xa=1;
xu=3;
tolerans=0.13;
fx= @ (x) x^2-5;
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