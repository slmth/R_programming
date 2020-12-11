#Introduction to R Programming - Less2

#(Notlar ve kodlar tarafýmdan yazilmakta ayni zamanda kaynak olarak Mustafa Vahit Keskin
#Hoca'nýn Udemy kursundaki anlatimi ve farkli kaynaklar kullanilmaktadir)

#VERÝ TÝPLERÝ VE KULLANIMI 1 

#R icin integer,logical gibi tipler aslinda bir nesnenin parcalari gibidir. 
#R bunu girdiye gore kendisi belirlemektedir. O nedenle
#onden herhangi bir atama yapmaya gerek yoktur. Nesnenin tipi degiskenin de tipidir.
#Biz bu nesneleri ogrenerek 2.konuya devam edecegiz.

#VEKTORLER

vektor <- rep(2:5,2) #2,5 araligindaki tüm elemanlari sirali sekilde 2 kez iceren vektor olusturur
str_v <- ("hs") #string iceren vektor olusturur
int_str_v <- c("hs",1,5,"code") #c() -- hem str hem de int gibi farklý tip verileri bir arada bulundurabilecek vektoru olusturur

typeof(vektor)  #vektor tipine ulasmayi saglar
is.vector(str_v) #t,f cevabi ile vektor mu kontrolu yapar

vek1 <- 1:5
vek2 <- c("python","r",1,5,8)

birlestir <- c(vek1,vek2) #iki farklý vektoru y,ne c yardýmýyla birlestirip tek bir vektor olarak aliyoruz
rbind(vek1,vek2) #satir bazli birlesitrme yapar
cbind(vek1,vek2) #sutun bazli birlestirme yapar

v <- 1:50 #1den 50ye kadar olan sayilari iceren vektor olusturalim
v[1:10] # [] koseli parantezler yardimiyla indexi 1'den 10'a kadar olan elemanlarý secebiliriz
v[v>20 & v<28] #v'nnin 20'den buyuk ve 28'den kucuk olan degerlerini secer
#bazi dillerde oldugu gibi bu secim icin uzun bir dongu yazmaya gerek yoktur.
#R'in bu ozelligi ile direkt olarak iki kosul saglamasi incelenebilir.

#MATRISLER

#Matrisler cok boyutlu veri tipleridir. O nedenler birden fazla vektoru biraraya getirerek elde 
#ettigimiz cok boyutlu olusumu da bir matris halinde ifade edebiliriz.

v1 <- 10:20
v2 <- 21:31

matris <- cbind (v1,v2) #vektorlerin sutunlarina gore birlesirme yapalim
print(matris)

#ayni islemi r programlamada matrix fonk. yardimiyla da gerceklestirebiliriz

matris2 <- matrix(10:31,11,2)
print(matris2)

is.matrix(matris2) #true,false dondurerek veri tipi matris mi kontrolu yapar

matris3 <- matrix(1:4, nrow=2, ncol=2,byrow=TRUE)
#nrow satir,ncol sutun sayisini vererek matris boyutunu belirlemeyi saglar
#byrow kullanilir ve T olarak belirlenirse verilen degerler satira gore sirali olarak atanir
print(matris3)

matris3 <- matrix(1:4, nrow=2, ncol=2,byrow=TRUE,
                  (dimnames=list(c("1.satir","2.satir"),c("1.sutun","2.sutun"))))
#dimnames satýr ve sutunlarýn isimlendirilmesi icin kullanilir
print(matris3)

matris4 <- matrix (1:12,3,4)
colnames(matris4) <- c("a","b","c","d")
rownames(matris4) <- c("bir","iki","uc")
print(matris4)
#ya da farkli bir yol olarak colnames() ve rownames() metodlari da kullanilabilir

matris4[1,2] #1.satir 2.sutun elemanina erismeyi saglar
#yine vektorlerde oldugu gibi matrislerde de koseli parantezler yardimiyla belirli indexteki elemana erisim saglanabilir
