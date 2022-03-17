%x1 + 2*x3 = -9   Denklem sistemindeki bilinmeyenleri
%2*x1 + x2 = 5    çözen matlab kodu
%3*x1 + 2*x2 + x3 = 4


A= [1 0 2 ; 2 1 0; 3 2 1]
B= [-9 ; 5 ; 4]
% inv(A) A matrisinin tersini alýr
inv(A) 
x = inv(A) * B
x