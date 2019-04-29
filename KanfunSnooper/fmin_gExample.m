% fmin_gExample

gail.InitializeDisplay
xAll = [];
fAll = [];
save kanfunX xAll fAll

%Plot function
xplot = 0:0.001:1;
fplot = kanfun(xplot);
h = plot(xplot,fplot,'-');
set(h,'color',MATLABBlue)
hold on

%Plot fmin_g
xAll = [];
fAll = [];
save kanfunX xAll fAll
[ffmg,outfmg] = funmin_g(@kanfun,0,1);
h = plot(mean(outfmg.intervals),ffmg,'.');
set(h,'color',MATLABGreen,'MarkerSize',80)
load kanfunX xAll fAll
h = plot(xAll,fAll,'.');
set(h,'color',MATLABGreen)

%Plot fminbnd
xAll = [];
fAll = [];
save kanfunX xAll fAll
[xfmb,ffmb] = fminbnd(@kanfun,0,1);
h = plot(xfmb,ffmb,'.');
set(h,'color',MATLABOrange,'MarkerSize',80)
load kanfunX xAll fAll
h = plot(xAll,fAll,'.');
set(h,'color',MATLABOrange)




