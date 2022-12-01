clc
close all

classnames= b.ClassNames;
predDS.Properties.VariableNames = [{'krediMiktarı'},{'krediDurum'},classnames'];
exPostDS = kredi;
C = confusionchart(exPostDS.KrediDurumu,predDS.krediDurum);
sortClasses(C,{'krediver' 'verme'})
