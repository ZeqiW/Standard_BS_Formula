function g=gVector(N,K,h,xm)
g=[];
for i=1:(N+1)
    x=-xm+(i-1)*h;
    g(i)=subplus(K-K*exp(x));
end
g=g';