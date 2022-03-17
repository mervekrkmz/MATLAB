x=[0 5 7 10]
y=[3 6 8 5]

n=length(x);
aralik=n-1;

A=zeros(2*aralik);
B=zeros(2*aralik,1);

str=1;
stn=1;

for i=1:aralik
    geciciA= [x(i) 1 ;x(i+1) 1];
    geciciB= [y(i)  ;x(i+1) ];
    A(str:str+1, stn:stn+1)=geciciA;
    B(str:str+1, 1)=geciciB;
    str=str+2;
    stn=stn+2;
end

A
B
%x=inv(A)*B

