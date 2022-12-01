clc
close all;

nTrees = 50;
yaprak2 = 10;
rng(kayitliRng);

b = TreeBagger(nTrees,X,Y,'OOBPredictorImportance','on', ...
                          'CategoricalPredictors',5, ...
                          'MinLeafSize',yaprak2);

bar(b.OOBPermutedPredictorDeltaError)
xlabel('Özellik numarası')
ylabel('Torbadan çıkma özelliğinin önemi')
title('Özellik önem sonuçları')

oobErrorFullX = oobError(b);