import UIKit

enum Hatalar: Error {
    case sifiraBolunmeHatasi
    case tamBolunmeme
}

func bolunme(s1: Int, s2: Int) throws -> Int {
    if s2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    } else if s1 % s2 != 0 {
        throw Hatalar.tamBolunmeme
    }
    return s1 / s2
}

var s1 = 10
var s2 = 7

//let sonuc = try? bolunme(s1: s1, s2: s2)
//
//if sonuc == nil {
//    print("Sonuc Nil yani hata var")
//} else {
//    print("Sonuç : \(sonuc!)")
//}



do {
    let sonuc = try bolunme(s1: s1, s2: s2)
    print("Sonuç : \(sonuc)")
}catch Hatalar.sifiraBolunmeHatasi{
        print("Sıfıra bölünme Hatası!")
}
catch Hatalar.tamBolunmeme{
        print("Tam Bölünme Hatası! ")
}
catch {
        print("Bilinmeyen Hata Oluştu!")
}

