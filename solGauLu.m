function x=solGauLu(L,U,B)
n=length(B);
Y=[];
for i=1:n
    for j=1:i-1
        B(i)=B(i)-L(i,j)*Y(j);
    end
    Y(i)=B(i)/L(i,i);
end
for i=n:-1:1
    for j=i+1:n
        Y(i)=Y(i)-U(i,j)*x(j);
    end
    x(i)=Y(i)/U(i,i);
end
