
uh=200;
ul=100;
ph=150;
pl=90;
ch=100;
cl=70;

dh=1;
dl=0.6;
d=dh+dl-1;
i=0;
for c=0:0.1:40
    i=i+1;
    if (dl*(ph-ul)>c) && (d*ph-dh*ch+(1-dl)*cl>0)
        P(i)=max(ul-pl,uh-ph-((uh-ul)*c+(1-dh)*(uh-ul)*(uh-ph))/(dl*(ph-ul)+(1-dh)*(uh-ph)));
    else
        P(i)=ul-pl;
    end
end
c=0:0.1:40;
hold on
plot(c,P)
