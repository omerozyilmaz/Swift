import UIKit

class Otobüs{
    var kapasite:Int?
    var nereden:String?
    var nereye:String?
    var mevcutYolcu:Int?
    
    func yolcuAl(yolcu:Int){
        mevcutYolcu! += yolcu
    }
    
    func yolcuIndir(yolcu:Int){
        mevcutYolcu! -= yolcu
    }
    
    func bilgiAl(){
        print("Kapasite     : \(kapasite!)")
        print("Nereden      : \(nereden!)")
        print("Nereye       : \(nereye!)")
        print("Yolcu Sayısı : \(mevcutYolcu!)")
    }
}

    var kamilKoç = Otobüs()
kamilKoç.kapasite = 60
kamilKoç.mevcutYolcu = 20
kamilKoç.nereye = "Ankara"
kamilKoç.nereden = "İstanbul"
kamilKoç.bilgiAl()

