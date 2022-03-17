clc;
clear all;
close all;

x=[0 2 3 5 8];
y=[-6 0 7 21 65];  
degree = 5; %derece
matrixLng = degree+1;

A =zeros(matrixLng,matrixLng);
B = zeros(matrixLng,1);

result = sqrm(x,0);

for row=1:matrixLng
    start = row-1;
    for col=1:matrixLng
          A(row,col)=sqrm(x,start);
          start = start+1;
      end
end

    for item=1:matrixLng
          B(item,1)=progy(x,y,item-1,result);
    end
    Rst=inv(A)*B %kat sayi matrisi
   
ln = size(Rst,1);
 
fx=0; %polinom

for col=1:ln
         fx = fx+Rst(col,1)*power(x,col-1);
      end

  plot(x,y,'o',x,fx,'r')  
  