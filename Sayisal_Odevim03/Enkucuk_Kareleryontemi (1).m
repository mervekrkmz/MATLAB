% x = [0 2 5 9 15 25 40]
% y = [5 12 23 37 44 60 81]
% bilinen de�erleri i�in en uygun be�inci dereceden polinumu 
% en k���k kareler y�ntemi ile ��zecek olan MATLAB 
% kodlar�n� yaz�n�z.
% Merve Korkmaz Bilgisayar M�hendisli�i Y�ksek Lisans , Programlama
% Uygulamlar�yla Say�sal Y�ntemler dersi 03.11.2021 tarihinde verilen
% �devin ��z�m�


x = [0 2 5 9 15 25 40] % x de�erlerinin tan�mlanmas�
y = [5 12 23 37 44 60 81] % y de�erlerinin tan�mlanmas�

% ��z�m derecesinin kullan�c�dan al�nmas�
drc =input('L�tfen en k���k y�ntemi i�in ��z�m derecesini giriniz:  ');
% drc= derece
for str= 1 : drc+1
    for stn=1 : drc+1 % stn=sutun str=sat�r
        A(str,stn) = sum(x.^(str+(stn-2))); % A matrisi ile ��z�m i�in ilk ad�m� olan
        % n sum(x) sum(x^2) ... sum(x^p
        %...
        % sum(x^p) sum(x^p+1) ...sum(x^2p) matrisi olu�turuldu.
        %6.Hafta ders notu 15. sayfadaki genel ��z�mden yararlan�ld�.
        
    end
    B(str,1) = sum (x.^(str-1).*(y));  % B matrisi ile ��z�m i�in ikinci ad�m� olan
        % sum(y) 
        %sum(x*y)
        % sum(x^2*y)
        %...
        %sum(x^p*y)  �eklinde sutun matrisi olu�turuldu.
        %6.Hafta ders notu 15. sayfadaki genel ��z�mden yararlan�ld�.
   
end

A % A matrisi ekrana yazd�r�ld�
B % B matrisi ekrana yazd�r�ld�
Sonuc=A\B; % A * Sonuc = B denklemindeki Sonuc matrisini bulmak i�in "\" 
           % kulland�k. inv ile ayn� i�lemi yapar.
Sonuc  % Sonuc matrisinin yazd�r�lmas�

% denklemin f(x)= (5.178745) + (5.178745)x^1  + (5.178745)x^2 
% + (5.178745)x^3  + (5.178745)x^4  + (5.178745)x^5 
%yaz�m �eklinin g�r�lmesi i�in 
fprintf ('f(x)= (%f)' , Sonuc(1));
for i=2 : drc+1;
    fprintf (' + (%f)x^%d ' , Sonuc(1) , i-1);
   
end
fprintf ('\n)' );

% fx fonksiyonu i�in sonuc(1) elaman� hari� foksiyon de�erlerinin
% hesaplanmas�
fx=0;
for i=2:length(Sonuc)
fx=fx+Sonuc(i)*(x.^(i-1));
end
fsonuc=Sonuc(1)+fx; % Son olarak fsonuc fonksiyonuna Sonuc(1) indisinin eklenmesi 
fsonuc %fsonuc fonksiyonun girilen dereceye kadar ��z�m de�erlerinin ekrana yazd�r�lmas�
plot(x,y,'o', x,fsonuc, 'r'); % x ve y de�erleri verilmi� olan bir fonksiyonun 
% en k���k kareler y�ntemi kullan�larak girilen dereceye kadar ��z�m� 
% yap�lan fonksiyonun x,y ile x,fsonuc grafi�inin tek figure ile
% �izidirilmesi
