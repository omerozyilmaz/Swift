import UIKit


func faktoriyel (sayi1 : Int, sayi2 : Int) -> Int{
    
    var result = 1
    
    for i in (sayi1+1)..<sayi2 {
        result = result * i
    }
    
    return result
}

var cevap = faktoriyel(sayi1: 4, sayi2: 7)

print(cevap)
