%fx(x)=x^3+4*x^2-3 fonkisyonunun kökünü mutlak hata =5e-5
%sýnýrlamasýna göre xo=0.7 deðerinden baþlayarak Newton-
% Raphson yöntemi ile çözümü
xe=0.7;
tol=5*1e-5;
fark=1;
iter=0;
fx=@(x) x^3 +4*x^2-3;
ftx=@ (x) 3*x^2 +8*x;
while(fark>tol)
    xy=xe-(fx(xe)/ftx(xe));
    fark=abs(xe-xy);
    xe=xy;
    iter=iter+1;
end
kok=xy
fx(kok)