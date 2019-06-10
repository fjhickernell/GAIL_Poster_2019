%%PEARC examples
format long e
absTol = 1e-6;
%f1ex = @(x) fmin_ex1(x);
f1ex = @(x) -5*exp(-100*(x-0.15).^2) - exp(-80*(x-0.65).^2);
x1true = 0.15000000016489229191586311147443901657010252326333
f1mintrue = f1ex(xtrue)

tic, [x11,f1min1] = fminbnd(f1ex,0,1); t1 = toc;
%tic, [f1min2, x12] = min(chebfun(f1ex,[0 1])); t2 = toc;
tic, [f1min2, x12] = min(chebfun(f1ex,[0 1],'chebfuneps',absTol)); t2 = toc;
tic, [f1min3, out3] = funmin_g(f1ex,0,1,absTol); 
x13 = mean(out3.intervals); t3 = toc;

errx1 = abs(x11 - x1true); errf1 = abs(f1min1 - f1mintrue);
errx2 = abs(x12 - x1true); errf2 = abs(f1min2 - f1mintrue);
errx3 = abs(x13 - x1true); errf3 = abs(f1min3 - f1mintrue);


output = [x11 f1min1 errx1 errf1 t1; 
   x12 f1min2 errx2 errf2 t2;
   x13 f1min3 errx3 errf3 t3]