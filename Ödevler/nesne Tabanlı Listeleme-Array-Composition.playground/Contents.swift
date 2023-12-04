import UIKit

class Adres {
    var il:String?
    var ilce:String?
    init(il: String, ilce: String) {
        self.il = il
        self.ilce = ilce
    }
}

class Personel:Adres {
    var personelNo:Int?
    var personel:String?
    var personelAdres:String?
    init(personelNo: Int, personel: String, personelAdres:String, il:String, ilce:String) {
        self.personelNo = personelNo
        self.personel = personel
        self.personelAdres = personelAdres
        super.init(il:il, ilce:ilce)
    }
}

var personelList = [Personel]()
var p1 = Personel(personelNo: 22225, personel: "Ahmet", personelAdres: "Sehit cad", il: "Ankara", ilce: "Keçiören")
var p2 = Personel(personelNo: 22231, personel: "Mehmet", personelAdres: "Sehit cad", il: "Ankara", ilce: "Keçiören")
var p3 = Personel(personelNo: 52323, personel: "Sila", personelAdres: "Sehit cad", il: "Ankara", ilce: "Keçiören")
var p4 = Personel(personelNo: 11225, personel: "Aleyna", personelAdres: "Sehit cad", il: "Ankara", ilce: "Keçiören")
var p5 = Personel(personelNo: 34225, personel: "Kasım", personelAdres: "Sehit cad", il: "Ankara", ilce: "Keçiören")
personelList.append(p1)
personelList.append(p2)
personelList.append(p3)
personelList.append(p4)
personelList.append(p5)
for kisi in personelList {
    print("\(kisi.personel!) : \(kisi.personelNo!) \(kisi.personelAdres!) ")
    print("******************")
}
