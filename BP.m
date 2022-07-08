clear
c1=100;
c2=200;
c3=300;
c4=400;
c5=500;

q1=0.859;
q2=0.9205;
q3=0.9384;
q4=0.9497;
q5=0.9529;
CT=300;

c=[c1,c2,c3,c4,c5];
q=[q1,q2,q3,q4,q5];
p=1.1*c;
ua=500*(q-q1).^0.5+120;
uv=50000*(q-q1).^2+120;

% q=[1,1,1,1,1];
PIa=zeros(1,CT);
Ia=zeros(1,CT);
PIv=zeros(1,CT);
Iv=zeros(1,CT);
i=0;
for ct=0:0.01:CT
    i=i+1;
    api1=ua(1)-p(1);
    if ct<(1-(q(2)-q(1)))*(p(2)-ua(1)) && (q(2)-q(1))*(p(2)-c(1))<q(2)*(p(2)-c(2))
        api2=ua(2)-p(2)-((ua(2)-ua(1))*ct+(1-q(2))*(ua(2)-ua(1))*(ua(2)-p(2)))/((1-(q(2)-q(1)))*(p(2)-ua(1))+(1-q(2))*(ua(2)-p(2)));
    else
        api2=-1;
    end
    
    if ct<(1-(q(3)-q(1)))*(p(3)-ua(1)) && (q(3)-q(1))*(p(3)-c(1))<q(3)*(p(3)-c(3))
        api3=ua(3)-p(3)-((ua(3)-ua(1))*ct+(1-q(3))*(ua(3)-ua(1))*(ua(3)-p(3)))/((1-(q(3)-q(1)))*(p(3)-ua(1))+(1-q(3))*(ua(3)-p(3)));
    else
        api3=-1;
    end
    
    if ct<(1-(q(4)-q(1)))*(p(4)-ua(1)) && (q(4)-q(1))*(p(4)-c(1))<q(4)*(p(4)-c(4))
        api4=ua(4)-p(4)-((ua(4)-ua(1))*ct+(1-q(4))*(ua(4)-ua(1))*(ua(4)-p(4)))/((1-(q(4)-q(1)))*(p(4)-ua(1))+(1-q(4))*(ua(4)-p(4)));
    else
        api4=-1;
    end
    
    if ct<(1-(q(5)-q(1)))*(p(5)-ua(1)) && (q(5)-q(1))*(p(5)-c(1))<q(5)*(p(5)-c(5))
        api5=ua(5)-p(5)-((ua(5)-ua(1))*ct+(1-q(5))*(ua(5)-ua(1))*(ua(5)-p(5)))/((1-(q(5)-q(1)))*(p(5)-ua(1))+(1-q(5))*(ua(5)-p(5)));
    else
        api5=-1;
    end
  
    api=[0,api1,api2,api3,api4,api5];
    
    PIa(i)=max(api);
    Ia(i)=find(api==max(api));
    
    PIa(i)=(p((Ia(i)-1))-c((Ia(i)-1)))*(q((Ia(i)-1))-(q((Ia(i)-1))-q(1)))*(p((Ia(i)-1))-c1)/((1-(q((Ia(i)-1))-q(1)))*(p((Ia(i)-1))-c1)-(1-q((Ia(i)-1)))*(p((Ia(i)-1))-c((Ia(i)-1)))); 
    
    
    
    vpi1=uv(1)-p(1);
    
    if ct<(1-(q(2)-q(1)))*(p(2)-uv(1)) && (q(2)-q(1))*(p(2)-c(1))<q(2)*(p(2)-c(2))
        vpi2=uv(2)-p(2)-((uv(2)-uv(1))*ct+(1-q(2))*(uv(2)-uv(1))*(uv(2)-p(2)))/((1-(q(2)-q(1)))*(p(2)-uv(1))+(1-q(2))*(uv(2)-p(2)));
    else
        vpi2=-1;
    end
    
    if ct<(1-(q(3)-q(1)))*(p(3)-uv(1)) && (q(3)-q(1))*(p(3)-c(1))<q(3)*(p(3)-c(3))
        vpi3=uv(3)-p(3)-((uv(3)-uv(1))*ct+(1-q(3))*(uv(3)-uv(1))*(uv(3)-p(3)))/((1-(q(3)-q(1)))*(p(3)-uv(1))+(1-q(3))*(uv(3)-p(3)));
    else
        vpi3=-1;
    end
    
    if ct<(1-(q(4)-q(1)))*(p(4)-uv(1)) && (q(4)-q(1))*(p(4)-c(1))<q(4)*(p(4)-c(4))
        vpi4=uv(4)-p(4)-((uv(4)-uv(1))*ct+(1-q(4))*(uv(4)-uv(1))*(uv(4)-p(4)))/((1-(q(4)-q(1)))*(p(4)-uv(1))+(1-q(4))*(uv(4)-p(4)));
    else
        vpi4=-1;
    end
    
    if ct<(1-(q(5)-q(1)))*(p(5)-uv(1)) && (q(5)-q(1))*(p(5)-c(1))<q(5)*(p(5)-c(5))
        vpi5=uv(5)-p(5)-((uv(5)-uv(1))*ct+(1-q(5))*(uv(5)-uv(1))*(uv(5)-p(5)))/((1-(q(5)-q(1)))*(p(5)-uv(1))+(1-q(5))*(uv(5)-p(5)));
    else
        vpi5=-1;
    end

    vpi=[0,vpi1,vpi2,vpi3,vpi4,vpi5];
    
    PIv(i)=max(vpi);
    Iv(i)=find(vpi==max(vpi));
    PIv(i)=(p((Iv(i)-1))-c((Iv(i)-1)))*(q((Iv(i)-1))-(q((Iv(i)-1))-q(1)))*(p((Iv(i)-1))-c1)/((1-(q((Iv(i)-1))-q(1)))*(p((Iv(i)-1))-c1)-(1-q((Iv(i)-1)))*(p((Iv(i)-1))-c((Iv(i)-1)))); 
end






