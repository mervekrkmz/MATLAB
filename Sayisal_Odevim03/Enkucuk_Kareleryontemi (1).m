% x = [0 2 5 9 15 25 40]
% y = [5 12 23 37 44 60 81]
% bilinen deðerleri için en uygun beþinci dereceden polinumu 
% en küçük kareler yöntemi ile çözecek olan MATLAB 
% kodlarýný yazýnýz.
% Merve Korkmaz Bilgisayar Mühendisliði Yüksek Lisans , Programlama
% Uygulamlarýyla Sayýsal Yöntemler dersi 03.11.2021 tarihinde verilen
% ödevin çözümü


x = [0 2 5 9 15 25 40] % x deðerlerinin tanýmlanmasý
y = [5 12 23 37 44 60 81] % y deðerlerinin tanýmlanmasý

% Çözüm derecesinin kullanýcýdan alýnmasý
drc =input('Lütfen en küçük yöntemi için çözüm derecesini giriniz:  ');
% drc= derece
for str= 1 : drc+1
    for stn=1 : drc+1 % stn=sutun str=satýr
        A(str,stn) = sum(x.^(str+(stn-2))); % A matrisi ile çözüm için ilk adýmý olan
        % n sum(x) sum(x^2) ... sum(x^p
        %...
        % sum(x^p) sum(x^p+1) ...sum(x^2p) matrisi oluþturuldu.
        %6.Hafta ders notu 15. sayfadaki genel çözümden yararlanýldý.
        
    end
    B(str,1) = sum (x.^(str-1).*(y));  % B matrisi ile çözüm için ikinci adýmý olan
        % sum(y) 
        %sum(x*y)
        % sum(x^2*y)
        %...
        %sum(x^p*y)  þeklinde sutun matrisi oluþturuldu.
        %6.Hafta ders notu 15. sayfadaki genel çözümden yararlanýldý.
   
end

A % A matrisi ekrana yazdýrýldý
B % B matrisi ekrana yazdýrýldý
Sonuc=A\B; % A * Sonuc = B denklemindeki Sonuc matrisini bulmak için "\" 
           % kullandýk. inv ile ayný iþlemi yapar.
Sonuc  % Sonuc matrisinin yazdýrýlmasý

% denklemin f(x)= (5.178745) + (5.178745)x^1  + (5.178745)x^2 
% + (5.178745)x^3  + (5.178745)x^4  + (5.178745)x^5 
%yazým þeklinin görülmesi için 
fprintf ('f(x)= (%f)' , Sonuc(1));
for i=2 : drc+1;
    fprintf (' + (%f)x^%d ' , Sonuc(1) , i-1);
   
end
fprintf ('\n)' );

% fx fonksiyonu için sonuc(1) elamaný hariç foksiyon deðerlerinin
% hesaplanmasý
fx=0;
for i=2:length(Sonuc)
fx=fx+Sonuc(i)*(x.^(i-1));
end
fsonuc=Sonuc(1)+fx; % Son olarak fsonuc fonksiyonuna Sonuc(1) indisinin eklenmesi 
fsonuc %fsonuc fonksiyonun girilen dereceye kadar çözüm deðerlerinin ekrana yazdýrýlmasý
plot(x,y,'o', x,fsonuc, 'r'); % x ve y deðerleri verilmiþ olan bir fonksiyonun 
% en küçük kareler yöntemi kullanýlarak girilen dereceye kadar çözümü 
% yapýlan fonksiyonun x,y ile x,fsonuc grafiðinin tek figure ile
% çizidirilmesi
