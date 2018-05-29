function v=fdm_am_put_be(N, M, K, T, r, q, sigma, xm)
k=T/M;
h=(2*xm)/N;
g=gVector(N,K,h,xm);
v=g;
for j=1:M
    v=fd2_bvpp(N,-xm,xm,k*r+1,-k*(r-q-0.5*sigma*sigma),-0.5*k*sigma*sigma,1,0,K-K*exp(-xm),1,0,0,v,g);
end