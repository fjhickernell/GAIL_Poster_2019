function y = kanfun(x)
if exist('kanfunX.mat','file')
   load kanfunX xAll fAll
else
   xAll = [];
   fAll = [];
end
xAll = [xAll; x(:)];
y = -5*exp(-100*(x-0.15).^2) - 0.5*exp(-10*(x-0.65).^2);
fAll = [fAll; y(:)];
save kanfunX xAll fAll
end