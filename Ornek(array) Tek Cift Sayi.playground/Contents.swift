import UIKit

var sayilar = [1,4,67,42,89,90,54,12,65,23,11,23]

var tekler = [Int]()

var ciftler = [Int]()

for s in sayilar {
    
    let sonuc = s % 2
    
    if sonuc == 0 {
        tekler.append(s)
    }
    if sonuc == 1 {
        ciftler.append(s)
    }

}
print(tekler)
print(ciftler)
