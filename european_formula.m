function V = european_formula(id, K, T, S, sigma, q, r)
d1=(log(S./K)+(r-q+0.5*sigma^2)*T)/(sigma*sqrt(T)); 
d2=d1-sigma*sqrt(T);
if(id==1)
    V=exp(-q*T)*S.*cdf('Normal',d1,0,1)-exp(-r*T)*K.*cdf('Normal',d2,0,1);
end
if(id~=1)
    V=exp(-r*T)*K.*cdf('Normal',-d2,0,1)-exp(-q*T)*S.*cdf('Normal',-d1,0,1);
end
