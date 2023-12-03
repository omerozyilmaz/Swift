import UIKit

class Kisiler {
    
    var ad:String?
    var yas:Int?
    var adres:Adres?
    
    init(ad: String? , yas: Int?, adres: Adres?) {
        self.ad = ad
        self.yas = yas
        self.adres = adres
    }
    
}

class Adres {
    var il:String?
    var ilçe:String?
    
    init(il: String?, ilçe: String?) {
        self.il = il
        self.ilçe = ilçe
    }
}

let adres = Adres(il: "Ankara", ilçe: "Keçiören")

let kisi = Kisiler(ad: "Ömer", yas: 26, adres: adres)

print("Kisi ad : \(kisi.adres!.il!)")


