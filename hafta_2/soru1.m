%x^2-5 fonksiyonunun [1 3] aral���nda 0.13 t�lerans de�erine g�re ikiye
%b�lme y�ntemi ile ��z�m�
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