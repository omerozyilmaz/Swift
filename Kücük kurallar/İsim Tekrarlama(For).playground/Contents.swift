import UIKit

var isim = "Ömer"

var son = 10

for i in 1...son {
    print("\(i). \(isim)")
}
 
for i in 1...isim.count { //burada ki count methotu harflerinin sayısı kadar çalıştırmayı sağladı
    print("\(i). \(isim)")
}

