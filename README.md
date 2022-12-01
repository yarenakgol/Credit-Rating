# credit-rating-with-data-set

Kullanılan veri seti kredi derecelendirme veri setidir. Veri seti üzerinde çalışmalar yapılmıştır. MATLAB kullanılmıştır.
Proje konusu otomatik bir kredi derecelendirme aracı oluşturmaktır. Kredi ölçütleri 
üzerinde çalışılmıştır. Projenin önemi bankacılık alanında daha çok öne plana çıkmaktadır. 
Kredi derecelendirme sistemi bankalar için önemli bir unsurdur. Kredi ölçütlerine göre bir 
banka, kredi verip vermeme konusunda sonuca varmaktadır.
Günümüzde banka ve insan arasındaki ilişki fazlası ile gelişmiştir. Hemen hemen her bir birey 
bir banka ile anlaşmalı bir şekilde hayatına devam etmektedir. Bu konu, hayatımızın her anında 
karşımıza çıkabilecek bir konu olduğu için seçilmiştir.

Kullanılan Veri Setinin Temini
Veri seti, belirli bir konunun sayılar veya değerler koleksiyonu olarak toplanıp saklanması ile 
oluşturulan dosyalara denir. Projede kullanılan veri seti kredi veri setidir. Şekil1’de görseli 
bulunmaktadır. Veri seti, 6 özellik ve 1000 veriden oluşmaktadır. Veri seti kaggle.com’dan 
temin edilmiştir. 

Kullanılan Veri l Yönteminin Teorik Bilgisi
Projede seçilen konu otomatik bir kredi derecelendirme aracı oluşturmadır. Bu çalışmada 
kredi derecelendirme verisi kullanılarak torbalama yönteminin sınıflandırma(bagging decision 
tree) doğruluğu üzerindeki etkisi incelenmiştir. 
Karar ağaçları, sınıflandırma problemlerinde sıklıkla kullanılan algoritmalarda biridir. 
Torbalama karar ağaçları(TKA), birlikte çalışan algoritmaları kullanarak başarımı arttırmaya 
yönelik olarak düzenlenmektedir. Torbalama, 1994 yılında Breiman tarafından ortaya atılan, 
istatiksel bir öğrenme temelli bir grup algoritmasıdır. Bu yöntem varyansı düşürdüğü için aşırı 
öğrenmenin engellenmesine yardımcı olmaktadır. Temelde, bir eğitim verisinin farklı 
kombinasyonlarının üretilerek birden fazla eğitim örneğinin oluşturulması amaçlanır. Eğitim 
verisinin N adetten oluştuğu varsayılır ise, N örneğe sahip bir eğitim verisi rastgele seçimle yerine 
koymalı olarak üretilir. Bu durumda bazı eğitim verisindeki bazı örnekler yer almazken, bazıları 
birden fazla yer alır. Her bir karar ağacı bu şekilde üretilmiş birbirinden farklı örnekler içeren 
verileri ile eğitilir. 
