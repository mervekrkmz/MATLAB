clc
clear;
%u1(t) ve u2(t) sinyallerinin 2*T göre tanımlanması
w = 2;
t = linspace(0,2*pi);
u1=10*sin(w*t);
u2=7*cos(w*t);

%Grafik çiziminin tek plot ile gerçekleştirilmesi
plot(t,u1,'-b',t,u2,'-.r','linewidth',3);
grid on

xlabel('zaman (s)','fontsize',14);
ylabel('u(t) ', 'Rotation',0,'fontsize',14);
title('u1(t) ve u2(t) Sinyalleri', 'fontsize', 16);
%Eksenlerdeki ızgaraların genişlik ve darlığının değiştirilmesi
%set(gca,'yTick',[-10:10]);
set(gca,'yTick',[-10:5:10]);
set(gca,'YColor','magenta')
set(gca,'XGrid', 'off');
%set(gca,'XScale','log','Yscale','linear');

set(gca,'XAxisLocation','top');
set(gca,'YAxisLocation','right');

