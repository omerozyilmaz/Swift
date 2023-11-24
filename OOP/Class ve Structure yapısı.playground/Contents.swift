import UIKit

struct Urun {
    
    var ad:String?
    var fiyat:Double?
    
}
class Araba {
    var renk:String?
    var kapasite:Int?
}

var laptop = Urun()

var bmw = Araba()

laptop.ad = "Macbook"

laptop.fiyat = 54000

print(laptop.ad!)
print(laptop.fiyat!)

if let temp = laptop.ad{
    print(temp)
}
