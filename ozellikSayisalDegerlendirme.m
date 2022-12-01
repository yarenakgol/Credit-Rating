clc
close all

[predClass,classifScore] = predict(b,[kredi.krediMiktari kredi.yas telefon ev]);

for i = 14:32
   fprintf( 'Müşteri %d:\n' ,i);
   fprintf('   Kredi Miktarı   = %5.2d\n',kredi.krediMiktari(i));
   fprintf('   Yaşı = %5.2d\n',kredi.yas(i));
   fprintf('   Aldığı Kredi Sayısı = %2d\n',kredi.aldigi_kredi_sayi(i));
   fprintf('   Telefon Durumu = %2d\n',telefon(i));
   fprintf('   Ev Durumu = %2d\n',ev(i));
   fprintf('   Ön görülen Sonuç : %s\n',predClass{i});
   fprintf('   Sınıflandırma Türü : \n');
   for j = 1:length(b.ClassNames)
      if (classifScore(i,j)>0)
         fprintf('        %s : %5.4f \n',b.ClassNames{j},classifScore(i,j));
      end
   end
end

classnames= b.ClassNames;
predDS = [table(kredi.krediMiktari,predClass),array2table(classifScore)];
predDS.Properties.VariableNames = [{'Kredi Miktarı'},{'krediDurum'},classnames'];

classnames2 = b.ClassNames;
predDS = [table(kredi.yas,predClass),array2table(classifScore)];
predDS.Properties.VariableNames = [{'Yaş'},{'krediDurum'},classnames2'];

classnames3 = b.ClassNames;
predDS = [table(telefon,predClass),array2table(classifScore)];
predDS.Properties.VariableNames = [{'Telefon Durumu'},{'krediDurum'},classnames3'];

classnames4 = b.ClassNames;
predDS = [table(ev,predClass),array2table(classifScore)];
predDS.Properties.VariableNames = [{'Ev Durumu'},{'krediDurum'},classnames4'];








