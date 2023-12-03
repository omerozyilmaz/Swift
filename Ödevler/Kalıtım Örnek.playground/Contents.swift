import UIKit

class Dersler {
    var bolum: String?

    init(bolum: String) {
        self.bolum = bolum
    }
}

class Kimya: Dersler {
    var notlar: Double?

    init(notlar: Double, bolum: String) {
        self.notlar = notlar
        super.init(bolum: bolum)
    }
}

class Sinavlar: Kimya {
    var vize: Double?
    var final: Double?

    init(notlar: Double, bolum: String, vize: Double, final: Double) {
        self.vize = vize
        self.final = final
        super.init(notlar: notlar, bolum: bolum)
    }

    func hesaplaOrtalama() {
        if let vize = vize, let final = final{
            let ortalama = vize * 0.30 + final * 0.60
            print("Ortalama: \(ortalama)")
        }
        else {
            print("Vize ve Final notları girilmemiş.")
        }
    }
}

var omer = Sinavlar(notlar: 75, bolum: "Kimya", vize: 20, final: 30)
omer.hesaplaOrtalama()
