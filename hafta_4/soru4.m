%x1 + 2*x3 = -9   Denklem sistemindeki bilinmeyenleri
%2*x1 + x2 = 5    Gaus Eliminasyonu yöntemi ile çözen matlab kodu
%3*x1 + 2*x2 + x3 = 4

A= [1 0 2 ; 2 1 0; 3 2 1]
B= [-9 ; 5 ; 4]
n = size (A , 1) 
AA = [A B]

for i = 1 : n - 1
    AA ( i , :) = AA ( i , :)/AA ( i , i)
    for j = i + 1 : n
    AA ( j , :) = AA ( j , :)- (AA ( i , :) * AA ( j , i)) / AA ( i , i)
    end
end
AA ( n , :) = AA ( n , :)/AA ( n , n)
BB  = AA ( : , n + 1)
AA

x(n) = BB (n);
for i = (n - 1) : -1 : 1
  
    for j = i + 1 : n
    m ( i) = AA ( i , j) * x ( j );
    BB(i)= BB(i) - m;
    end
    x (i)= BB (i) / AA (i ,i )
end
x