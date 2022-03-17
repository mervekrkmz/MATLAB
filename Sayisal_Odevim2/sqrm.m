function rst=sqrm(A,degree)
rst = 0;
for sut=1:size(A,2)
    rst = rst +power(A(sut),degree);
    
end

end