t = 0:0.2:2*pi;
w = 2;
u=2*sin(w*t);

grafik=plot(t,u);

set(grafik,'color','red','lineWidth',2);
set(grafik,'marker','^');%marker s, o, d ,v >,< ^ :iþaretleri olabilir
set(grafik,'markerSize',10,'markerEdgeColor','k','markerFaceColor','g');

%Eksen etiketleri
xlabel('zaman (s)','fontsize',14);
ylabel('u(t) ', 'Rotation',0,'fontsize',14);
title('u1(t) = 2*sin(\omega t) Sinyali ', 'fontsize', 16);
%Axis eklenmesi
axis([-2 8 -2.5 2.5]);%minx maxx miny maxy
grid on
%figure isim verilmesi
set(1, 'name','Sinüs Grafigi')

