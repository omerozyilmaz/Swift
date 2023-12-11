import UIKit

class Sinif {
    var ogrenciNo:Int?
    var ad:String?
    var sinif:String?
    
    init(ogrenciNo: Int, ad: String , sinif: String) {
        self.ogrenciNo = ogrenciNo
        self.ad = ad
        self.sinif = sinif
    }
}

var ogrenciListesi = [Int:Sinif]()

var o1 = Sinif(ogrenciNo: 90, ad: "Omer", sinif: "12B")
var o2 = Sinif(ogrenciNo: 100, ad: "Mahmut", sinif: "11c")
var o3 = Sinif(ogrenciNo: 110, ad: "Sila", sinif: "10d")
var o4 = Sinif(ogrenciNo: 77, ad: "Aleyna", sinif: "12a")
ogrenciListesi[o1.ogrenciNo!]=o1
ogrenciListesi[o2.ogrenciNo!]=o2
ogrenciListesi[o3.ogrenciNo!]=o3
ogrenciListesi[o4.ogrenciNo!]=o4
for (ogrenci,nesne) in ogrenciListesi{
    
    print("********")
    print("Ögrenci no    : \(ogrenci)")
    print("Ögrenci ad    : \(nesne.ad!)")
    print("Ögrenci sınıf : \(nesne.sinif!)")
}
