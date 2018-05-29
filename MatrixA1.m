function A1= MatrixA1(N,h)
A1=zeros(N);
for i=2:N-1
    A1(i,i-1)=(-1)/(2*h);
    A1(i,i+1)=1/(2*h);
end