%Bootstrap example
tic
%rng(47);
nData = 32;
nBig = 5;
xData = [3*randn(nData - nBig,1); 10 + randn(nBig,1)];
trueMean = 10*nBig/nData
%nData = size(xData,1);
CI = mean(xData) + [-1 1]*1.96*std(xData)/sqrt(nData)

% Bootstrap
nBoot = 500;
iData = randi(nData,nData,nBoot);
xBoot = xData(iData);
meanBoot = mean(xBoot,1);
CIBoot = quantile(meanBoot,[0.025 0.975])
toc
 
