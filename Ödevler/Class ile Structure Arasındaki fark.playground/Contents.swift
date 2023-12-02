import UIKit

// Structure kullanırsak fazladan yer tüketmeden aynı yerde birbirini bozmayan nesneler yapabiliriz


class OgrenciClass {
    var ad:String?
    var soyAd:String?
    var yas:Int?
}
var ogrenci1 = OgrenciClass()
ogrenci1.ad = "Ahmet"
var ogrenci2 = ogrenci1
ogrenci1.ad = "Mehmet"

print(ogrenci1.ad!) // burada ogrenci1 Mehmeti dondörümüş olacak. yani istediğimizi vermemiş olacak

struct OgrenciStruct {
    var ad:String?
    var soyAd:String?
    var yas:Int?
}
var ogrenci3 = OgrenciStruct()
ogrenci3.ad = "Ahmet"
var ogrenci4 = ogrenci3
ogrenci4.ad = "Mehmet"

print(ogrenci3.ad!) //burada ogrenci3'ü çağırdığımızda Ahmeti çağırabiliyoruz Mehmet Ahmeti bozmadı ama daha iyi optimize yapmamızı sağladı
