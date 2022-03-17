%Grafik �iziminde kullan�lacak t zaman�n�n 0.01 ad�m aral���nda
%tan�mlanmas�
t = 0:0.01:10;
w = 1;
%u(t) sinyalinin tan�mlanmas�
u = 2*sin(w*t);
%Grafigin �izilmesi (t:x ekseni u:y eksini de�erleri)
plot(t,u);
%Grafik �zerinde eksen a��klamalar�n�n yap�lmas�
xlabel('zaman (s)','fontsize',12);
ylabel('u(t) ', 'Rotation',0,'fontsize',12);
title('u(t) = 2*sin(\omega t) Sinyali', 'fontsize', 14);