import UIKit


func kisiTanima(ad:String){
    guard ad == "Ahmet" else {
        print("Tanımlanamayan Kişi")
        return
    }
    print("Kişi Doğru")
}

kisiTanima(ad: "Ahmet")
