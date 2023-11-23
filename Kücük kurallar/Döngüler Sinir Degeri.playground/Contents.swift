import UIKit
//3 ile 6 arasında

for i in 3...6{
    print("Döngü 1 : \(i)")
}

var sayac = 3

while sayac < 7 {
    print("Döngü 2 : \(sayac)")
    sayac += 1
}

for i in stride(from: 0, through: 10, by: +2) {
    print("Döngü 3 : \(i)")
}


