function v=fdm_eu_put_be(N, M, K, T, r, q, sigma, xm)
k=T/M;
h=(2*xm)/N;
v=gVector(N,K,h,xm);
for j=1:M
    v=fd2_bvp(N,-xm,xm,k*r+1,-k*(r-q-0.5*sigma*sigma),-0.5*k*sigma*sigma,1,0,K*exp(-r*j*k)-K*exp(-xm-q*j*k),1,0,0,v);
end