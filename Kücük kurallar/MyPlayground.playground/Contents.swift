import UIKit

//break

for i in 1...5 {
    if i == 3 {
        break
    }
    print("Döngü 1 : \(i)")
}

for i in 1...5 {
    if 1 == 3 {
        continue
    }
    print("Döngü 2 : \(i)")
}
