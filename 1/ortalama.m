function [toplam, ort]=ortalama(sayi)
clc;
toplam=0;
ort=0;
%d�ng� tan�mlamak i=1 den i<=sayi i++ ayn� �ey
for i=1:sayi
    toplam=toplam+i;
end
ort=toplam/sayi;
end