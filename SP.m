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
% p1=1.1*c1;
% p2=1.1*c2;
% p3=1.1*c3;
% p4=1.1*c4;
% p5=1.1*c5;
% p=1.1*c;

ua=500*(q-q1).^0.5+120;
uv=50000*(q-q1).^2+120;

PIa=zeros(1,CT);
Ia=zeros(1,CT);
PIv=zeros(1,CT);
Iv=zeros(1,CT);
% q=[1,1,1,1,1];
i=0;
for ct=0:0.01:CT
    i=i+1;
    p1=ua(1);
    api1=p1-c(1);
%     if ct<(1-(q(2)-q(1)))*(p(2)-ua(1))
    if ct<=(q(2)-(q(2)-q(1)))*(ua(2)-ua(1))/4
        p2=(ua(2)+ua(1))/2+((ua(2)-ua(1))^2/4-(ua(2)-ua(1))*ct/(q(2)-(q(2)-q(1))))^0.5;
        if (q(2)-q(1))*(p2-c(1))<q(2)*(p2-c(1))
           api2=(p2-c2)*(q(2)-(q(2)-q(1)))*(p2-c1)/((1-(q(2)-q(1)))*(p2-c1)-(1-q(2))*(p2-c2)); 
        else
           api2=-1;
        end
    else
        api2=-1;
    end
    
%     if ct<(1-(q(3)-q(1)))*(p(3)-ua(1))
    if ct<=(q(3)-(q(3)-q(1)))*(ua(3)-ua(1))/4
        p3=(ua(3)+ua(1))/2+((ua(3)-ua(1))^2/4-(ua(3)-ua(1))*ct/(q(3)-(q(3)-q(1))))^0.5;
        if (q(3)-q(1))*(p3-c(1))<q(3)*(p3-c(1))
           api3=(p3-c3)*(q(3)-(q(3)-q(1)))*(p3-c1)/((1-(q(3)-q(1)))*(p3-c1)-(1-q(3))*(p3-c3)); 
        else
            api3=-1;
        end
    else
        api3=-1;
    end
    
%     if ct<(1-(q(4)-q(1)))*(p(4)-ua(1))
    if ct<=(q(4)-(q(4)-q(1)))*(ua(4)-ua(1))/4
        p4=(ua(4)+ua(1))/2+((ua(4)-ua(1))^2/4-(ua(4)-ua(1))*ct/(q(4)-(q(4)-q(1))))^0.5;
        if (q(4)-q(1))*(p4-c(1))<q(4)*(p4-c(1))
           api4=(p4-c4)*(q(4)-(q(4)-q(1)))*(p4-c1)/((1-(q(4)-q(1)))*(p4-c1)-(1-q(4))*(p4-c4)); 
        else
            api4=-1;
        end
    else
        api4=-1;
    end
    
%     if ct<(1-(q(5)-q(1)))*(p(5)-ua(1))
    if ct<=(q(5)-(q(5)-q(1)))*(ua(5)-ua(1))/4
        p5=(ua(5)+ua(1))/2+((ua(5)-ua(1))^2/4-(ua(5)-ua(1))*ct/(q(5)-(q(5)-q(1))))^0.5;
        if (q(5)-q(1))*(p5-c(1))<q(5)*(p5-c(1))
           api5=(p5-c5)*(q(5)-(q(5)-q(1)))*(p5-c1)/((1-(q(5)-q(1)))*(p5-c1)-(1-q(5))*(p5-c5)); 
        else
            api5=-1;
        end
    else
        api5=-1;
    end
    
    
    api=[0,api1,api2,api3,api4,api5];
    
    PIa(i)=max(api);
    Ia(i)=find(api==max(api));
    
    
    p1=uv(1);
    vpi1=p1-c(1);
    
%     if ct<(1-(q(2)-q(1)))*(p(2)-uv(1))
    if ct<=(q(2)-(q(2)-q(1)))*(uv(2)-uv(1))/4
        p2=(uv(2)+uv(1))/2+((uv(2)-uv(1))^2/4-(uv(2)-uv(1))*ct/(q(2)-(q(2)-q(1))))^0.5;
        if (q(2)-q(1))*(p2-c(1))<q(2)*(p2-c(1))
           vpi2=(p2-c2)*(q(2)-(q(2)-q(1)))*(p2-c1)/((1-(q(2)-q(1)))*(p2-c1)-(1-q(2))*(p2-c2)); 
        else
           vpi2=-1;
        end
    else
        vpi2=-1;
    end
    
%     if ct<(1-(q(3)-q(1)))*(p(3)-uv(1))
    if ct<=(q(3)-(q(3)-q(1)))*(uv(3)-uv(1))/4
        p3=(uv(3)+uv(1))/2+((uv(3)-uv(1))^2/4-(uv(3)-uv(1))*ct/(q(3)-(q(3)-q(1))))^0.5;
        if (q(3)-q(1))*(p3-c(1))<q(3)*(p3-c(1))
           vpi3=(p3-c3)*(q(3)-(q(3)-q(1)))*(p3-c1)/((1-(q(3)-q(1)))*(p3-c1)-(1-q(3))*(p3-c3)); 
        else
            vpi3=-1;
        end
    else
        vpi3=-1;
    end
    
%     if ct<(1-(q(4)-q(1)))*(p(4)-uv(1))
    if ct<=(q(4)-(q(4)-q(1)))*(uv(4)-uv(1))/4
        p4=(uv(4)+uv(1))/2+((uv(4)-uv(1))^2/4-(uv(4)-uv(1))*ct/(q(4)-(q(4)-q(1))))^0.5;
        if (q(4)-q(1))*(p4-c(1))<q(4)*(p4-c(1))
           vpi4=(p4-c4)*(q(4)-(q(4)-q(1)))*(p4-c1)/((1-(q(4)-q(1)))*(p4-c1)-(1-q(4))*(p4-c4)); 
        else
            vpi4=-1;
        end
    else
        vpi4=-1;
    end
    
%     if ct<(1-(q(5)-q(1)))*(p(5)-uv(1))
    if ct<=(q(5)-(q(5)-q(1)))*(uv(5)-uv(1))/4
        p5=(uv(5)+uv(1))/2+((uv(5)-uv(1))^2/4-(uv(5)-uv(1))*ct/(q(5)-(q(5)-q(1))))^0.5;
        if (q(5)-q(1))*(p5-c(1))<q(5)*(p5-c(1))
           vpi5=(p5-c5)*(q(5)-(q(5)-q(1)))*(p5-c1)/((1-(q(5)-q(1)))*(p5-c1)-(1-q(5))*(p5-c5)); 
        else
            vpi5=-1;
        end
    else
        vpi5=-1;
    end
    
    
    vpi=[0,vpi1,vpi2,vpi3,vpi4,vpi5];
    
    PIv(i)=max(vpi);
    Iv(i)=find(vpi==max(vpi));
end



