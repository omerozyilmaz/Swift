import UIKit

class Kisiler {
    
    var isim:String?
    var soyIsim:String?
    var yas:Int?
    var okul:String?
    
    init(isim: String, soyIsim: String, yas: Int, okul: String) {
        self.isim = isim
        self.soyIsim = soyIsim
        self.yas = yas
        self.okul = okul
    }
    
}

var kisi1 = Kisiler(isim: "ömer", soyIsim: "özyılmaz", yas: 25, okul:"gazi")
print(kisi1.isim!,kisi1.soyIsim!,kisi1.okul!)


// Burada OOP'ye uyması ve kolay bir şekilde kişi kaydedebilmek için init yapısı kullandık

