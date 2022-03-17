%x1 + 2*x3 = -9   Denklem sistemindeki bilinmeyenleri
%2*x1 + x2 = 5    Cramer yöntemi ile çözen matlab kodu
%3*x1 + 2*x2 + x3 = 4

A= [1 0 2 ; 2 1 0; 3 2 1]
B= [-9 ; 5 ; 4]
 
for i = 1 : 3
    D = A
    D ( : , i) = B
    x ( i , 1) = det (D) / det (A)
end
x
 % Bu þekilde de döngü çalýþýr
% for (i = 1 length (B))
   %  D = A
    % D ( : , i) = B
    % x ( i , 1) = det (D) / det (A)
% end
% x