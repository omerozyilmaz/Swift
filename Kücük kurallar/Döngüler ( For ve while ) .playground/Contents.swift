import UIKit

for i in 1...3 {
    print(i)
    print("Merhaba")
    
}

// 10 ile 20 arasında 5 er

var baslangic = 10
var bitis = 20
var artis = 5

for a in stride(from: baslangic, through: bitis, by: artis){
    print(a)
}

var sayac = 1

while sayac < 4 {
    print(sayac)
    sayac += 1
}
