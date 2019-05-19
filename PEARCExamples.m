%%PEARC examples
format long
absTol = 1e-6;
%f1ex = @(x) fmin_ex1(x);
f1ex = @(x) -5*exp(-100*(x-0.15).^2) - exp(-80*(x-0.65).^2);
tic, [x11,f1min1] = fminbnd(f1ex,0,1); t1 = toc;
%tic, [f1min2, x12] = min(chebfun(f1ex,[0 1])); t2 = toc;
tic, [f1min2, x12] = min(chebfun(f1ex,[0 1],'chebfuneps',absTol)); t2 = toc;
tic, [f1min3, out3] = funmin_g(f1ex,0,1,absTol); 
x13 = mean(out3.intervals); t3 = toc;

output = [x11 f1min1 t1; 
   x12 f1min2 t2;
   x13 f1min3 t3]