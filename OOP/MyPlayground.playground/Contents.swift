import UIKit

class Matematik {
    
    func toplama(sayi1:Int, sayi2:Int) -> Int {
        
        let toplam = sayi1 + sayi2
        print("Toplam : \(toplam)")
    }
    
    func cikarma(sayi1: Double, sayi2: Double, isim:){
        return sayi1-sayi2
    }
    
    func bol(sayi1:Double, sayi2:Double) -> String {
        return "Bölme : \(sayi1/sayi2)"
    }
}

var m = Matematik()

m.toplama(sayi1: 20, sayi2: 40)


