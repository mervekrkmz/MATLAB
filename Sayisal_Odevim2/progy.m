function rst=progy(X,Y,degree,length)
rst = 0;
for sut=1:length
    rst = rst +power(X(sut),degree)*Y(sut);
    
end

end