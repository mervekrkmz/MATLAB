%sin(x)=0.495 fonksiyonun �k�n� ba�alng�� aral��� [29 31] alarak ikiye
%b�lme y�ntemi ile ��z�m�
%sin^-1 0.04950 yap�l�nca cevap 30.8750 ��k�yor.
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