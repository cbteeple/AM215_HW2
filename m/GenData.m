function f=GenData(N)
%%
K_true=10;

a = -5;
b = 5;
x = (b-a).*rand(N,1) + a;

a = -1;
b = 1;
a_mu = (b-a).*rand(K_true+1,1) + a;

f_mu=zeros(K_true+1,N);

for mu=0:K_true
    f_mu(mu+1,:)= a_mu(mu+1).*x.^mu;
    
end

f=sum(f_mu,1)';

%plot(x,f,'o');

end


