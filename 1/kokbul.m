function [x1,x2]=kokbul(a,b,c);
delta=b^2-4*a*c;
    if delta>0
        x1=(-b-sqrt(delta))/(2*a);x2=(-b+sqrt(delta))/(2*a);
     fprintf('Ýki reel kök; x1 = %f,x2 = %f\n ',x1,x2);
    elseif delta==0
        fprintf('Tek kök var; x1 = x2= %f \n ',-b/(2*a));
    else
        fprintf('Reel kök yoktur\n ');
    end
end