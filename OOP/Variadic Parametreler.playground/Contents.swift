import UIKit

func toplamVariadic(sayilar:Int...) -> Int {
    var toplam = 0
    for i in sayilar {
        toplam = toplam + i
    }
    return toplam
}

var v1 = toplamVariadic(sayilar: 1,2,3,4,5,6,7)

print(v1)
