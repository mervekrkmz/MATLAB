% fx(x)=e^-x-x denkelminin k�k�n� [0 , 0.1] ba�alng��
%de�erlerini kullanarak Sekant Y�ntemi ile ��z�m�
xe1=0;
xe2=0.1;
tol=0.001;
fark=1;
iter=0;
fx=@ (x) exp (-x) - x;
while(fark>tol)
    iter=iter+1;
xy=xe1-((xe2-xe1)/(fx(xe2)-fx(xe1)))*fx(xe1)
fark=fx(xy);
xe2=xe1;
xe1=xy;
end
iter
xy
fark