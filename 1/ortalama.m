function [toplam, ort]=ortalama(sayi)
clc;
toplam=0;
ort=0;
%döngü tanýmlamak i=1 den i<=sayi i++ ayný þey
for i=1:sayi
    toplam=toplam+i;
end
ort=toplam/sayi;
end