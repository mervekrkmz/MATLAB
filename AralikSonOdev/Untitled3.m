clear
clc
close all
X = [0 5 7 10];
Y = [3 6 8 5];

%Cubic Splines
N = length(Y);
Aralik = N-1;
Bilinmeyenler = 4*Aralik;

%%%Y deðerlerinin olduðu sutun vektörünün oluþturulmasý
Y_Degerleri = zeros(2*(N-2)+2 + (N-2) + (N-2) + 2,1);

%%%H0 Oluþturma spline'ýn tüm noktalardan geçmesini saðlamak için
Str_Num = 2*(N-2) + 2;
H0 = zeros(Str_Num ,Bilinmeyenler);
for i = 1:(Str_Num /2)
  stn = ((i-1)*4+1);
  str = (i-1)*2 + 1;
  for j = stn:(stn+3)
    H0(str,j) = X(i)^(3-j+stn);
    H0(str+1,j) = X(i+1)^(3-j+stn);
  end
  Y_Degerleri(str,1) = Y(i);
  Y_Degerleri(str+1,1) = Y(i+1);
end

%%%H1 oluþturma tüm birinci türevlerin ayný olmasý için
H1 = zeros(N-2,Bilinmeyenler);
for i = 2:(N-1)
  stn = 1 + (i-2)*4;
  H1(i-1,stn) = 3*X(i)^2;
  H1(i-1,stn+1) = 2*X(i);
  H1(i-1,stn+2) = 1;
  H1(i-1,stn+3) = 0;
  H1(i-1,stn+4) = -3*X(i)^2;
  H1(i-1,stn+5) = -2*X(i);
  H1(i-1,stn+6) = -1;
  H1(i-1,stn+7) = 0;
end

%%%H2 Oluþturmatüm ikinci türevlerin ayný olmasý için
H2 = 0*H1;
for i = 2:(N-1)
  stn = 1 + (i-2)*4;
  H2(i-1,stn) = 6*X(i);
  H2(i-1,stn+1) = 2;
  H2(i-1,stn+2) = 0;
  H2(i-1,stn+3) = 0;
  H2(i-1,stn+4) = -6*X(i);
  H2(i-1,stn+5) = -2;
  H2(i-1,stn+6) = 0;
  H2(i-1,stn+7) = 0;
end

%%%ikinci türevlerin sýfýr olmasý içn
Hsifir = zeros(2,Bilinmeyenler);
%%%1.bitiþ noktasý
Hsifir(1,1) = 6*X(1);
Hsifir(1,2) = 2*X(1);
Hsifir(1,3) = 1;
Hsifir(2,end) = 1;
Hsifir(2,end-1) = 2*X(end);
Hsifir(2,end-2) = 6*X(end);

%%%12x12 matrisin oluþturumasý için H0,H1,H2 ve Hsifir' ýn bir araya
%%%getirilmesi
H = [H0;H1;H2;Hsifir]; 

%%%Solve for coefficients
KatSayilar = inv(H)*Y_Degerleri;
X
Y
Y_Degerleri
H
KatSayilar