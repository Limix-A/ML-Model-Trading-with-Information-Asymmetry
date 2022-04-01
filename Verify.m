
uh=200;
ul=100;
% ph=150;
% pl=90;
ch=100;
cl=70;

dh=0.1;
dl=1;
i=0;

d=dh+dl-1;

for c=0:0.001:60
    ph=(uh+ul)/2+[d^2*(uh-ul)^2-4*d*(uh-ul)*c]^0.5/(2*d);
    i=i+1;
    if (c<=d*(uh-ul)/4) && (d*ph-dh*ch+(1-dl)*cl>0)
%     if (dl*(ph-ul)>c) && (dh*(ph-ch)>(1-dl)*(ph-cl))
        R(i)=max(ul-cl,(ph-ch)*(ph-cl)*(dh + dl - 1)/[dl*(ph-cl)-(1-dh)*(ph-ch)]);
    else
        R(i)=ul-cl;
    end
end
c=0:0.001:60;
hold on
plot(c,R)
