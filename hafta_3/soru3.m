%fx(x)=x^2-10 fonkisyonunun k�k�n� t�lerans =0.05
%s�n�rlamas�na g�re xo=3 de�erinden ba�layarak Newton-
% Raphson y�ntemi ile ��z�m�
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