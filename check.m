K = 40;
sigma = 0.2;
q = 0.02;
r = 0.04;
T = 0.5; 
xm = 1.5;
N = 100;
M = 100;
h = 2*xm/N;
x = [-xm:h:xm]';
S = K*exp(x);
vbe=fdm_eu_put_be(N, M, K, T, r, q, sigma, xm);
vcn=fdm_eu_put_cn(N, M, K, T, r, q, sigma, xm);

%vbe(13)
%vcn(18)
vex = zeros(N+1,1);
for i = 1:N+1
    vex(i) = european_formula(0, K, T, S(i), sigma, q, r);
end

ebe = norm(vex-vbe,inf)
ecn = norm(vex-vcn,inf)
