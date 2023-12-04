import UIKit

let toplama = {
    (sayi1:Int,sayi2:Int) -> Int in
    return sayi1+sayi2
}
let sonuc = toplama (10,20)
//  şart yazma
var sayilar:[Int] = [5,10,-5,75,20]
let siralama1 = sayilar.sorted(by: {sayi1,sayi2 in sayi1>sayi2})
print(siralama1)
