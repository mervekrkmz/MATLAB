%Grafik çiziminde kullanılacak t zamanının 0.01 adım aralığında
%tanımlanması
t = 0:0.01:10;
w = 1;
%u(t) sinyalinin tanımlanması
u = 2*sin(w*t);
%Grafigin çizilmesi (t:x ekseni u:y eksini değerleri)
plot(t,u);
%Grafik üzerinde eksen açıklamalarının yapılması
xlabel('zaman (s)','fontsize',12);
ylabel('u(t) ', 'Rotation',0,'fontsize',12);
title('u(t) = 2*sin(\omega t) Sinyali', 'fontsize', 14);