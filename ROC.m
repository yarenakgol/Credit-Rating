clc
close all;

subplot(2,2,1)
rocObj = rocmetrics(exPostDS.KrediDurumu,predDS.krediver,"krediver");
plot(rocObj);
subplot(2,2,2)
rocObj = rocmetrics(exPostDS.KrediDurumu,predDS.verme,"verme");
plot(rocObj);