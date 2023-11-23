import UIKit



print("Dikdörtgen alanı (1)")
print("Çember alanı (2)")


var secim = 2
var kisaKenar = 10
var uzunKenar = 20
var yariCap = 2

print("Seciminiz : \(secim)")

if secim == 1 {
    
    var dikdörtgenAlani = kisaKenar * uzunKenar
    print(dikdörtgenAlani)
} else  {
    
    var cemberAlani = Double.pi * pow(Double(yariCap),2)
    print(cemberAlani)
}


var gun = 2

switch gun {
case 1 :
    print("Pazartesi")
case 2 :
    print("Salı")
case 3:
    print("Çarşamba")
case 4 :
    print("Perşembe")
case 5 :
    print("Cuma")
default :
    print("böyle bir tercik yok")
}


