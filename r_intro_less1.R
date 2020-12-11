#Introduction to R Programming - Less1

#(Notlar ve kodlar tarafýmdan yazilmakta ayni zamanda kaynak olarak Mustafa Vahit Keskin
#Hoca'nýn Udemy kursundaki anlatimi ve farkli kaynaklar kullanilmaktadir)

#Deger atamasi,ekrana yazdirma komutu,operatorler (islemsel ve mantiksal)

#NOT: hashtag(#) isareti kullanilarak yazilan tum satirlar tipki Python dilinde oldugu
#gibi R dili tarafindan yorum satiri olarak algilanir ve yazilan kod parcasi
#ya da program calistirildiginda ekranda goruntulenmez

#Bir degiskene atama nasil yapilir?

sayi1 = 5 
sayi2 <- 10
sayi3 <<- 15

print(sayi1)
print(sayi2)
print(sayi3)

#3 farklý kullanim þekliyle de bir deðiþkene deger atamasi yapmak mumkundur.
#erkana yazdirma komutu da pekçok dilde bulundugu gibi print()'tir

#Toplama,cikarma,carpma,bolme operatorleri

#toplama islemi + isareti ile saglanir
toplama <- sayi1+sayi2+sayi3
print(toplama)

#cikarma islemi - isareti ile saglanir
cikarma <- sayi2-sayi1
print(cikarma)

#carpma islemi * isareti ile saglanir
carpma <- ayi1*sayi2*sayi3
print(carpma)

#bolme islemi / isareti ile saglanir 
bolme <- sayi3/sayi1
print(bolme)

#bir sayinin kuvvetini almak icin ^ isareti kullanilir
#ornegin 5 sayisinin 3. kuvetini bulalim

us_hesapla <- 5^3
print(us_hesapla)

#eger farklý bir sekild us hesaplamak isterseniz (**) iki kez yildiz operatoru kullanabilirsiniz
print(5**3)

#mantiksal operatorler (<,>,<=,>=,!,==,&,|)

#> buyuktur operatorudur. bir degerin diger degerden buyuk olup olmadigini kontrol etmeye ve 
#buna karsilik boolean(True,False) þeklinde bir cevap almaya yarar.
#Bundan sonraki tüm operatorler iiin alinacak cevaplar boolean oldugundan her biri icin
#tek tek belirtilmeyecektir.

print(sayi1 > sayi2)
print(sayi3 > sayi1)

#< kucuktur operatorudur. 

print(sayi1 < sayi2)
print(sayi3 < sayi2)

#<= kucuk ve esit olma kosullarinin beraber kontrolunu yapar. 
#yani sayinin esit olmasi durumunu da kapsar.

sayi4=15
print(sayi1 <= sayi2)
print(sayi3 <= sayi4)
print(sayi3 <= sayi1)

#>= buyuk ve esit olma kosullarinin beraber kontrolunu yapar. 
#yani sayinin esit olmasi durumunu da kapsar.

sayi4=15
print(sayi1 >= sayi2)
print(sayi3 >= sayi4)
print(sayi3 >= sayi1)

# != operatoru esit deðil mi kontrolu yapar. yani karsýlasitirilan iki girdi birbirine 
#esit degilse True esitse False dondurur.

print(sayi1 != sayi2)
print(sayi3 != sayi4)

# == operatoru ise tam aksine esit mi kontrolü yapar. esitse True degisel False dondurur.

print(sayi1 == sayi2)
print(sayi3 == sayi4)

#-----------------------------
vektor <- 1:15
print(vektor)
#-----------------------------

# & (ve) operatoru iki durumun ayný anda saglanip saglanmadigini kontrol eder.
#ya da iki durumu saglayan degerleri kullanir.
vektor[vektor > 8 & vektor < 15] #vektor icindeki 15'ten kucuk ve 8'den buyuk degerleri yazdir


# | (veya) operatoru icin iki durum ayri ayri olarak saglanabilir
vektor[vektor > 8 | vektor < 5] #vektor icindeki 5'ten kucuk veya 8'den buyuk degerleri yazdir



