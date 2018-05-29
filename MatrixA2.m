function A2 = MatrixA2(N,h)
A2=zeros(N);
for i=2:N-1
    A2(i,i-1)=1/(h^2);
    A2(i,i)=-2/(h^2);
    A2(i,i+1)=1/(h^2);
end 