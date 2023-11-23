import UIKit

var meyveler : [String] = ["Çilek", "Muz","Elma","Kivi","Kiraz"]

meyveler.append("Karpuz")
meyveler += ["Mandalina"]
meyveler[2] = "Ananas"

meyveler.insert("Portakal", at: 3)
meyveler.count
meyveler.contains("Kiraz")
meyveler.min()
meyveler.max()
meyveler.sort()
meyveler.reverse()
meyveler.sort()
meyveler.remove(at: 2)

for (index , meyve) in meyveler.enumerated(){
    print("Sonuç : \(index) \(meyve)")
}

var dizi = [Int] (repeating: 0, count: 3) //Varsayılan değeri otamatik veren yapı, 3 adet 0 değeri oluşturur
print(dizi)

