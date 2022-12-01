clc
close all
%veri seti telefon numarası cells-double dönüşümü
%eğer telefonu var ise 1 yok ise 0 şeklinde veri setinde değişim yapılır
telefon_durumu=kredi.telefonDurumu; 
telefon=zeros(1000,1); 

Index_var = strfind(telefon_durumu,'var'); 
Index1 = find(not(cellfun('isempty',Index_var)));
for i=1:1000
 for j=1:404
     if(i==Index1(j))
          telefon(i,1)=1;
      end
 end
end

%veri seti ev durumu cells-double dönüşümü
%eğer ev sahibisi ise 1 kiracı ise 0 şeklinde veri setinde değişim yapılır
ev_durumu=kredi.evDurumu;
ev=zeros(1000,1);

Index_evsahibi = strfind(ev_durumu,'evsahibi');
Index2 = find(not(cellfun('isempty',Index_evsahibi)));
for i=1:1000
 for j=1:713
     if(i==Index2(j))
          ev(i,1)=1;
      end
 end
end
X = [kredi.krediMiktari kredi.yas kredi.aldigi_kredi_sayi telefon ev];
Y = ordinal(kredi.KrediDurumu);

yaprak = [1 5 10]; %yaprak düğüm
ntress = 40; %ağaç sayısı
rng(800,'twister');
kayitliRng = rng;

color = "rbm";
for ii=1:length(yaprak)
    rng(kayitliRng)
    b = TreeBagger(ntress,X,Y,'OOBPrediction','on', ...
        'CategoricalPredictors',5, ...
        'MinLeafSize',yaprak(ii));
    plot(oobError(b));
    hold on;
end
xlabel('Yetiştirilen ağaç sayısı');
ylabel('Torba dışı sınıflandırma hatası');
legend({'1', '5', '10'},'Location','NorthEast')
title('Farklı Yaprak Boyutları İçin Sınıflandırma Hatası')
hold off

