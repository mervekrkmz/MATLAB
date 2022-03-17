%Grafik çiziminde kullanýlacak t zamanýnýn 0.01 adým aralýðýnda
%tanýmlanmasý
t = 0:0.01:10;
w = 1;
%u(t) sinyalinin tanýmlanmasý
u = 2*sin(w*t);
%Grafigin çizilmesi (t:x ekseni u:y eksini deðerleri)
plot(t,u);
%Grafik üzerinde eksen açýklamalarýnýn yapýlmasý
xlabel('zaman (s)','fontsize',12);
ylabel('u(t) ', 'Rotation',0,'fontsize',12);
title('u(t) = 2*sin(\omega t) Sinyali', 'fontsize', 14);