


x=[0 5 7 10]
y=[3 6 8 5]

n=length(x);
aralik=n-1;

A=zeros(2*aralik);
B=zeros(2*aralik,1);
SatirNumarasi= 2*(n-2)+2;
Bilinmeyenler=4*aralik;
H=zeros(SatirNumarasi , Bilinmeyenler);
%str=1;
%stn=1;
z=[0 2 7 10];
%for i=1:aralik
 %   geciciA= [x(i) 1 ;x(i+1) 1];
  %  geciciB= [y(i)  ;x(i+1) ];
   % A(str:str+1, stn:stn+1)=geciciA;
    %B(str:str+1, 1)=geciciB;
    %str=str+2;
    %stn=stn+2;
%end
for i=1:SatirNumarasi/2
   stn= [(i-1)*4 + 1];
   str= [(i-1)*2 + 1];
    for j= stn: (stn+4)
    H(str,stn)=z(i)^(3-j+stn);
    H(str+1,stn)=z(i+1)^(3-j+stn);
    str=str+2;
    stn=stn+2;
    end
end
A
B
%x=inv(A)*B
H