%fx(x)=x^2-10 fonkisyonunun kökünü tölerans =0.05
%sýnýrlamasýna göre xo=3 deðerinden baþlayarak Newton-
% Raphson yöntemi ile çözümü
xe=0.3;
tol=0.05;
fark=1;
iter=0;
fx=@(x) x^2-10;
ftx=@ (x) 2*x ;
while(fark>tol)
    xy=xe-(fx(xe)/ftx(xe));
    fark=abs(xe-xy);
    xe=xy;
    iter=iter+1;
end
kok=xy
fx(kok)