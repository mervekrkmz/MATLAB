%fx(x)=3*e^-0.5*x-x fonkisyonun k�k�n� mutlak hata=0.07
%s�n�rlamas�na g�re xo=8 de�erinden ba�layarak Basit 
% iterasyon y�ntemi ile ��z�m�
tol=0.07;
hata=1;
x0=8;
n=0;
while hata>tol
    n=n+1;
    x1=3*exp(-0.5*x0);
    hata=abs(x1-x0);
    x0=x1;
end
n
hata
x=x0
fx=3*exp(-0.5*x)-x