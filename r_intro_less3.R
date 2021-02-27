#Introduction to R Programming - Less3

#(Notlar ve kodlar tarafımdan yazilmakta ayni zamanda kaynak olarak Mustafa Vahit Keskin
#Hoca'nın Udemy kursundaki anlatimi ve farkli kaynaklar kullanilmaktadir)

#VERİ TİPLERİ VE KULLANIMI 3

#Dataframeler

data_f <- data.frame(
  urun=c("kalem","canta","kitap","silgi"),
  fiyat=c(8,120,30,4),
  stok_adet=c(1200,15,250,1500)
)

summary(df) #df deki minimumu,1.çeyrek bilgisini,medyanı,ortalamayı vb.bulmyı sağlar

ncol(df)  #sutun sayısını verir

nrow(df) #satır sayısını verir

dim(df) #boyut verir

data_f_yeni <- data.frame (data_f$urun,data_f$fiyat)
#bir önceki dfden urun ve fiyat degiskenlerini alarak
#yeni bir df icine aktarır

data_f[1:2,]
#data_f'nin 1 ve 2.sütununun tüm satırlarını yazdırır

data_f[c(1,2),c(2,3)]
#data_f'nin 1,2. satır ve 2,3. sütunlarını yazdırır

data_f$satıs <- c(100,10,8,250)
sutun_ekle <- data_f
#data_f'ye satıs sütununu ekler

#Listeler

#birden fazla farklı tipi içinde barındırabilen ve aynı zamanda
#değişikliğe uğrayabilen yapılardır.

liste <- list (TRUE,c(41,85,46),"hs",1387) 
#list() fonksiyonu aracılığıyla oluşturulurlar

names(liste) <- c("boolean","vektorel","string","integer")
#names ifadesiyle listedeki her değer bir isim alabilir yani 
#bir listenin indexinin degeri yerine bir string ifade koyabiliriz

liste$boolean
liste$vektorel
liste$string
liste$integer

#bu sayede indexi sayısal degerle çağırmak yerine string ifadeyle çagırabiliriz

liste[1] 
liste[2]
liste[3]
liste[4]

#liste[1] ile yapılan çağırma işlemi bize o değerin hem ismini hem de sahip olduğu girdiyi verir

#liste[1] için

#$boolean
#[1] TRUE gibi bir çıktı alırız.

isimsiz_liste <- list (TRUE,c(41,85,46),"hs",1387) 

isimsiz_liste[1] 
isimsiz_liste[2]
isimsiz_liste[3]
isimsiz_liste[4]

#isimsiz listedeki çağırılma işleminde deminki listenin isim yerinde
#sadece index değer gözükür ve o indexin sahip olduğu girdi ekrana yazdırılır

#isimsiz_liste[4] için

#[[1]]
#[1] 1387 gibi bir çıktı alırız

liste_birlestir <- c(liste,isimsiz_liste)
#c aracılıgı ile iki listeyi tek liste haline getirebiliriz
#tek liste 8 eleman içerir şeklinde gözükür 
#her eleman hangi veri tipine sahipse o şekilde tek bir
#liste içinde yer alır

liste_birlestir_2 <- list(liste,isimsiz_liste)
#list ifadesi ile de iki listeyi birleştirip aynı çıktıyı alırız
#fakat listenin eleman sayısı 2 olarak gözükür ve 2 adet liste içerdiği gözükür
#yani uzunluk olarak c yönteminden farklı bir uzunlukta gözükür ve
#içerik olarak 2 tip liste barındırdığı algılanırs
