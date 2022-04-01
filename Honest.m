uh=200;
ul=100;
ph=160;
pl=60;
ch=120;
cl=20;

dh=0.8;
dl=1;

c=0:1:50;
% if c<dl*(ph-ul) && dh*(ph-ch)>(1-dl)*(ph-cl)
    h=(dl*(ph-ul)-c)/[dl*(ph-ul)+(1-dh)*(uh-ph)];
% end

hold on
plot(c,h)

