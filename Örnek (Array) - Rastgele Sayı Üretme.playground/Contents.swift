import UIKit

var sayilar = [Int] ()

for _ in 1...10 {
    let rasgeleSayi = Int.random(in: 0...9)
    
    sayilar.append(Int(rasgeleSayi))
}

sayilar.sort()

print(sayilar)
