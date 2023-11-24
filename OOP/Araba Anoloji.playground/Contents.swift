import UIKit

class Araba {
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    func calistir(){
        calisiyorMu = true
    }
    
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlandir(kacKm:Int){
        hiz! += kacKm
    }
    
    func yavala(kacKm:Int){
        hiz! -= kacKm
    }
    
}


var bmw = Araba()

bmw.calistir()
bmw.hiz=100
bmw.hizlandir(kacKm: 20)


