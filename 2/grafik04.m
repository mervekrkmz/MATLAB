% line komutu ile dogru çizimi
line([0.5 2.5],[1 4.5]) %line([x1,x2],[y1,y2]);
axis([0 3 0 5]);%axis([xmin xmax ymin y max])
%grid on
%Açýklamalar
xlabel('x ekseni','fontsize', 14);
ylabel('y ekseni','fontsize', 14);
title('Dogru denklemi','fontsize',16);

hold on
plot(0.5,1,'xk',2.5,4.5,'xk', 'Markersize',12);%point
plot([0 0.5],[1 1],'-.k',[0.5 0.5],[0,1],'-.k');%([x1 x2],[y1 y2]) line 
plot([0 2.5],[4.5 4.5],'-.k',[2.5 2.5],[0 4.5],'-.k');