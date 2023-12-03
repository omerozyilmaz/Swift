import UIKit

class Personel{
    func iseAlindi(){
        print("Personel Mutlu")
    }
}

class Mudur:Personel{
    func iseAl(p:Personel){
        p.iseAlindi()
    }
    func terfiEttir(p:Personel){
        (p as! Ogretmen).maasArttir()
    }
}

class Isci:Personel{
    
}

class Ogretmen:Personel{
    func maasArttir(){
        print("Maaş arttı öğretmen mutlu")
    }
}

var isci:Personel = Isci()
var ogretmen:Personel = Ogretmen()
var mudur = Mudur()

mudur.iseAl(p: isci)
mudur.iseAl(p: ogretmen)

mudur.terfiEttir(p: ogretmen)
