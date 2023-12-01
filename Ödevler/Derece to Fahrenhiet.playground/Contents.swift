import UIKit
class donustur {
    func donusturucu(derece : Double) -> Double {
        let fahrenheit = derece*1.28 + 32
        print("Fahrenheit : \(fahrenheit)")
        return fahrenheit
    }
}

let sonuc = donustur()

donustur().donusturucu(derece: 20)

