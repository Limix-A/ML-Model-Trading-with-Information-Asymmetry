clear
lq=0.1;
hq=0.05;
n=3000;

uh=200;
ul=100;
ph=150;
pl=90;
ch=120;
cl=80;
c=10;


for k=0:1:n
    dh=binocdf(k,n,hq);
    dl=1-binocdf(k,n,lq);
    d=dh+dl;
    if (dl*(ph-ul)>c) && (d*ph-dh*ch+(1-dl)*cl>0)
        P(k+1)=max(ul-pl,uh-ph-((uh-ul)*c+(1-dh)*(uh-ul)*(uh-ph))/(dl*(ph-ul)+(1-dh)*(uh-ph)));
    else
        P(k+1)=ul-pl;
    end
end
k=0:1:n;
hold on
plot(k/n,P)
