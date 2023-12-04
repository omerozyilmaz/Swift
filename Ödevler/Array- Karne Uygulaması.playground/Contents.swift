import UIKit

class DersNotlar {
    var ders:String?
    var not:Int?
    
    init(ders:String,not:Int) {
        self.ders=ders
        self.not=not
    }
}

var dn1 = DersNotlar(ders: "Kimya", not: 10)
var dn2 = DersNotlar(ders: "Biyoloji", not: 40)
var dn3 = DersNotlar(ders: "Matematik", not: 10)
var dn4 = DersNotlar(ders: "Fizik", not: 10)

var dersler = [DersNotlar]()
dersler.append(dn1)
dersler.append(dn2)
dersler.append(dn3)
dersler.append(dn4)

for dn in dersler {
    print("************")
    print("\(dn.ders!) : \(dn.not!)")
}
