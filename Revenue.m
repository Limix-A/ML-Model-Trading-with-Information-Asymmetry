uh=200;
ul=100;
ph=150;
pl=90;
ch=120;
cl=80;

% dh=0:0.1:1;
dl=0.9;
c=0;
i=0;
for dh=0:0.0001:1
    i=i+1;
    P(i)=(ph-ch)*(ph-cl)*(dh + dl - 1)/[dl*(ph-cl)-(1-dh)*(ph-ch)];
end
dh=0:0.0001:1;
hold on
plot(dh,P)

