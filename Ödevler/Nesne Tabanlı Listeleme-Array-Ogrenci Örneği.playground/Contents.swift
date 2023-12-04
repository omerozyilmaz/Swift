import UIKit

class Ogrenci {
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no: Int, ad: String , sinif: String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}

var o1 = Ogrenci(no: 99, ad: "Ömer", sinif: "12F")
var o2 = Ogrenci(no: 100, ad: "Kazım", sinif: "10F")
var o3 = Ogrenci(no: 222, ad: "Duygu", sinif: "11R")
var o4 = Ogrenci(no: 333, ad: "Ezgi", sinif: "10E")
var o5 = Ogrenci(no: 232, ad: "Songül", sinif: "12F")
var o6 = Ogrenci(no: 232, ad: "Aleyna", sinif: "12D")

var ogrenciListesi = [Ogrenci]()
ogrenciListesi.append(o1)
ogrenciListesi.append(o2)
ogrenciListesi.append(o3)
ogrenciListesi.append(o4)
ogrenciListesi.append(o5)
ogrenciListesi.append(o6)

for ogrenci in ogrenciListesi {
    print("******")
    print("Ogrenci No    : \(ogrenci.no!)")
    print("Ogrenci ad    : \(ogrenci.ad!)")
    print("Ogrenci sinif : \(ogrenci.sinif!)")
}
