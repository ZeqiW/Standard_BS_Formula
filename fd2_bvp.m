function u = fd2_bvp(n,a,b,alpha,beta,gamma,alpha1,beta1,gamma1,alpha2,beta2,gamma2,f)
h=(b-a)/n;
A=zeros(n+1);
A(1,1)=2*h*alpha1-3*beta1; A(1,2)=4*beta1; A(1,3)=-beta1;
A(n+1,n-1)=beta2; A(n+1,n)=-4*beta2; A(n+1,n+1)=2*h*alpha2+3*beta2;
for i=2:n
    A(i,i-1)=-beta*h+2*gamma;
    A(i,i)=2*h*h*alpha-4*gamma;
    A(i,i+1)=beta*h+2*gamma;
end %matrix A 
B=[];
B(1)=2*gamma1*h;B(n+1)=2*gamma2*h;
for i=2:n
    B(i)=2*h*h*f(i);
end %matrix B (Ax=B)
[L,U,P]=lu(A);
B=B';
B=P*B;
u=solGauLu(L,U,B);
u=u';

