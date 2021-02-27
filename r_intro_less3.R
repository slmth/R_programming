#Introduction to R Programming - Less3

#(Notlar ve kodlar taraf�mdan yazilmakta ayni zamanda kaynak olarak Mustafa Vahit Keskin
#Hoca'n�n Udemy kursundaki anlatimi ve farkli kaynaklar kullanilmaktadir)

#VER� T�PLER� VE KULLANIMI 13

#Dataframeler

data_f <- data.frame(
  urun=c("kalem","canta","kitap","silgi"),
  fiyat=c(8,120,30,4),
  stok_adet=c(1200,15,250,1500)
)

summary(df) #df deki minimumu,1.�eyrek bilgisini,medyan�,ortalamay� vb.bulmy� sa�lar

ncol(df)  #sutun say�s�n� verir

nrow(df) #sat�r say�s�n� verir

dim(df) #boyut verir

data_f_yeni <- data.frame (data_f$urun,data_f$fiyat)
#bir �nceki dfden urun ve fiyat degiskenlerini alarak
#yeni bir df icine aktar�r

data_f[1:2,]
#data_f'nin 1 ve 2.s�tununun t�m sat�rlar�n� yazd�r�r

data_f[c(1,2),c(2,3)]
#data_f'nin 1,2. sat�r ve 2,3. s�tunlar�n� yazd�r�r

data_f$sat�s <- c(100,10,8,250)
sutun_ekle <- data_f
#data_f'ye sat�s s�tununu ekler

#Listeler

#birden fazla farkl� tipi i�inde bar�nd�rabilen ve ayn� zamanda
#de�i�ikli�e u�rayabilen yap�lard�r.

liste <- list (TRUE,c(41,85,46),"hs",1387) 
#list() fonksiyonu arac�l���yla olu�turulurlar

names(liste) <- c("boolean","vektorel","string","integer")
#names ifadesiyle listedeki her de�er bir isim alabilir yani 
#bir listenin indexinin degeri yerine bir string ifade koyabiliriz

liste$boolean
liste$vektorel
liste$string
liste$integer

#bu sayede indexi say�sal degerle �a��rmak yerine string ifadeyle �ag�rabiliriz

liste[1] 
liste[2]
liste[3]
liste[4]

#liste[1] ile yap�lan �a��rma i�lemi bize o de�erin hem ismini hem de sahip oldu�u girdiyi verir

#liste[1] i�in

#$boolean
#[1] TRUE gibi bir ��kt� al�r�z.

isimsiz_liste <- list (TRUE,c(41,85,46),"hs",1387) 

isimsiz_liste[1] 
isimsiz_liste[2]
isimsiz_liste[3]
isimsiz_liste[4]

#isimsiz listedeki �a��r�lma i�leminde deminki listenin isim yerinde
#sadece index de�er g�z�k�r ve o indexin sahip oldu�u girdi ekrana yazd�r�l�r

#isimsiz_liste[4] i�in

#[[1]]
#[1] 1387 gibi bir ��kt� al�r�z

liste_birlestir <- c(liste,isimsiz_liste)
#c arac�l�g� ile iki listeyi tek liste haline getirebiliriz
#tek liste 8 eleman i�erir �eklinde g�z�k�r 
#her eleman hangi veri tipine sahipse o �ekilde tek bir
#liste i�inde yer al�r

liste_birlestir_2 <- list(liste,isimsiz_liste)
#list ifadesi ile de iki listeyi birle�tirip ayn� ��kt�y� al�r�z
#fakat listenin eleman say�s� 2 olarak g�z�k�r ve 2 adet liste i�erdi�i g�z�k�r
#yani uzunluk olarak c y�nteminden farkl� bir uzunlukta g�z�k�r ve
#i�erik olarak 2 tip liste bar�nd�rd��� alg�lan�rs