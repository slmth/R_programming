#Introduction to R Programming - Less3

#(Notlar ve kodlar tarafýmdan yazilmakta ayni zamanda kaynak olarak Mustafa Vahit Keskin
#Hoca'nýn Udemy kursundaki anlatimi ve farkli kaynaklar kullanilmaktadir)

#VERÝ TÝPLERÝ VE KULLANIMI 13

#Dataframeler

data_f <- data.frame(
  urun=c("kalem","canta","kitap","silgi"),
  fiyat=c(8,120,30,4),
  stok_adet=c(1200,15,250,1500)
)

summary(df) #df deki minimumu,1.çeyrek bilgisini,medyaný,ortalamayý vb.bulmyý saðlar

ncol(df)  #sutun sayýsýný verir

nrow(df) #satýr sayýsýný verir

dim(df) #boyut verir

data_f_yeni <- data.frame (data_f$urun,data_f$fiyat)
#bir önceki dfden urun ve fiyat degiskenlerini alarak
#yeni bir df icine aktarýr

data_f[1:2,]
#data_f'nin 1 ve 2.sütununun tüm satýrlarýný yazdýrýr

data_f[c(1,2),c(2,3)]
#data_f'nin 1,2. satýr ve 2,3. sütunlarýný yazdýrýr

data_f$satýs <- c(100,10,8,250)
sutun_ekle <- data_f
#data_f'ye satýs sütununu ekler

#Listeler

#birden fazla farklý tipi içinde barýndýrabilen ve ayný zamanda
#deðiþikliðe uðrayabilen yapýlardýr.

liste <- list (TRUE,c(41,85,46),"hs",1387) 
#list() fonksiyonu aracýlýðýyla oluþturulurlar

names(liste) <- c("boolean","vektorel","string","integer")
#names ifadesiyle listedeki her deðer bir isim alabilir yani 
#bir listenin indexinin degeri yerine bir string ifade koyabiliriz

liste$boolean
liste$vektorel
liste$string
liste$integer

#bu sayede indexi sayýsal degerle çaðýrmak yerine string ifadeyle çagýrabiliriz

liste[1] 
liste[2]
liste[3]
liste[4]

#liste[1] ile yapýlan çaðýrma iþlemi bize o deðerin hem ismini hem de sahip olduðu girdiyi verir

#liste[1] için

#$boolean
#[1] TRUE gibi bir çýktý alýrýz.

isimsiz_liste <- list (TRUE,c(41,85,46),"hs",1387) 

isimsiz_liste[1] 
isimsiz_liste[2]
isimsiz_liste[3]
isimsiz_liste[4]

#isimsiz listedeki çaðýrýlma iþleminde deminki listenin isim yerinde
#sadece index deðer gözükür ve o indexin sahip olduðu girdi ekrana yazdýrýlýr

#isimsiz_liste[4] için

#[[1]]
#[1] 1387 gibi bir çýktý alýrýz

liste_birlestir <- c(liste,isimsiz_liste)
#c aracýlýgý ile iki listeyi tek liste haline getirebiliriz
#tek liste 8 eleman içerir þeklinde gözükür 
#her eleman hangi veri tipine sahipse o þekilde tek bir
#liste içinde yer alýr

liste_birlestir_2 <- list(liste,isimsiz_liste)
#list ifadesi ile de iki listeyi birleþtirip ayný çýktýyý alýrýz
#fakat listenin eleman sayýsý 2 olarak gözükür ve 2 adet liste içerdiði gözükür
#yani uzunluk olarak c yönteminden farklý bir uzunlukta gözükür ve
#içerik olarak 2 tip liste barýndýrdýðý algýlanýrs