clear
clc
close all
X = [0 5 7 10];
Y=[3 6 8 5];
N = length(Y);
Num_eqns = N-1;
Unknowns = 4*Num_eqns;

B = zeros(2*(N-2)+2 + (N-2) + (N-2) + 2,1);

Num_row = 2*(N-2) + 2;
H0 = zeros(Num_row,Unknowns);
for idx = 1:(Num_row/2)
  col = ((idx-1)*4+1);
  row = (idx-1)*2 + 1;
  for jdx = col:(col+3)
    H0(row,jdx) = X(idx)^(3-jdx+col);
    H0(row+1,jdx) = X(idx+1)^(3-jdx+col);
  end
  B(row,1) = Y(idx);
  B(row+1,1) = Y(idx+1);
end

H1 = zeros(N-2,Unknowns);
for idx = 2:(N-1)
  col = 1 + (idx-2)*4;
  H1(idx-1,col) = 3*X(idx)^2;
  H1(idx-1,col+1) = 2*X(idx);
  H1(idx-1,col+2) = 1;
  H1(idx-1,col+3) = 0;
  H1(idx-1,col+4) = -3*X(idx)^2;
  H1(idx-1,col+5) = -2*X(idx);
  H1(idx-1,col+6) = -1;
  H1(idx-1,col+7) = 0;
end
H2 = 0*H1;
for idx = 2:(N-1)
  col = 1 + (idx-2)*4;
  H2(idx-1,col) = 6*X(idx);
  H2(idx-1,col+1) = 2;
  H2(idx-1,col+2) = 0;
  H2(idx-1,col+3) = 0;
  H2(idx-1,col+4) = -6*X(idx);
  H2(idx-1,col+5) = -2;
  H2(idx-1,col+6) = 0;
  H2(idx-1,col+7) = 0;
end
Hepts = zeros(2,Unknowns);

Hepts(1,1) = 6*X(1);
Hepts(1,2) = 2*X(1);
Hepts(1,3) = 1;
Hepts(2,end) = 1;
Hepts(2,end-1) = 2*X(end);
Hepts(2,end-2) = 6*X(end);

H = [H0;H1;H2;Hepts];

Cozum = inv(H)*B;
H
X
Y
Cozum
a=Cozum(1);
a
b=Cozum(2);
b
c=Cozum(3);
c
d=Cozum(4);
d
e=Cozum(5);
e
f=Cozum(6);
f
g=Cozum(7);
g
h=Cozum(8);
h
t=Cozum(9);
t
j=Cozum(10);
j
k=Cozum(11);
k
l=Cozum(12);
l
i=2;
while i ~= X
    i=input('\nLutfen 0, 5 ,7 ve 10 deðerlerinden birisini giriniz :\n');
    if i ~= X
        fprintf('\nUzgunum! Hatali giris yaptiniz.Tekrar deneyiniz.\n') 
    elseif i==0
     Y1=a*i^3+b*i^2+c*i+d
    elseif i==5 
    Y2=a*i^3+b*i^2+c*i+d
    elseif i==7
    Y3=e*i^3+f*i^2+g*i+h
    
elseif i==10
    Y4=t*i^3+j*i^2+k*i+l
end
end
    
    
    
    
    