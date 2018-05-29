function v=fdm_am_put_cn(N, M, K, T, r, q, sigma, xm)
k=T/M;
h=(2*xm)/N;
I=eye(N+1);
A1=MatrixA1(N+1,h);
A2=MatrixA2(N+1,h);
%matrix A1, A2
g=gVector(N,K,h,xm);%create vector g, but it has N+1 elements, although input is N
Right=(1-0.5*k*r)*I+0.5*k*(r-q-0.5*sigma*sigma)*A1+0.25*k*sigma*sigma*A2;
gvalue=Right*g;
vvalue=gvalue;
for j=1:M
v = fd2_bvpp(N,-xm,xm,1+0.5*k*r,-0.5*k*(r-q-0.5*sigma*sigma),-0.25*k*sigma*sigma,1,0,K-K*exp(-xm),1,0,0,vvalue,gvalue);
vvalue=Right*v;
end