clc
close all;

X1 = [kredi.krediMiktari kredi.yas ev telefon];
rng(kayitliRng)
b = TreeBagger(nTrees,X1,Y,'OOBPrediction','on', ...
                          'CategoricalPredictors',4, ...
                          'MinLeafSize',yaprak2);

oobErrorX246 = oobError(b);

plot(oobErrorFullX,'b')
hold on
plot(oobErrorX246,'r')
xlabel('Yetiştirilen ağaç sayısı')
ylabel('Torba dışı sınıflandırma hatası')
legend({'Tüm özellikler', 'Özellikler 1 2 3 5'},'Location','NorthEast')
title('Farklı Predicotr Setleri için Sınıflandırma Hatası')
hold off
b = compact(b);

