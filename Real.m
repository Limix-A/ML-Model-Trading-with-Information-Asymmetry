
T=[1+zeros(1,5000),zeros(1,45000)];
right=0;
n=100;
for i=1:1:100
    
    S=randsample(50000,n,true);
    D=sum(T(S))/n;
    if D<=0.11
        right=right+1;
    end
end

dh=binocdf(11,100,0.1);