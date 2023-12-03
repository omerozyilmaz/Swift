import UIKit

class Araç {
    
    var renk:String?
    var vites:String?
    
    init(renk: String , vites: String) {
        self.renk = renk
        self.vites = vites
    }
    
}


class Araba:Araç {
    var kasaTipi:String?
    
    init(kasaTipi: String , renk: String , vites: String) {
        self.kasaTipi = kasaTipi
        super.init(renk: String , vites: String)
    }
}


class Nissan:Araba {
    
    var model:String?
    
    init(model:String, kasaTipi: String , renk: String , vites: String) {
        self.kasaTipi = kasaTipi
        super.init(kasaTipi: String, renk: String , vites: String)
    }
}


var araba = Araba(kasaTipi: "sedan", renk: "kırmızı", vites: "otomatik")

var arac = Araç(renk: "sedan", vites: "otomatik")

var nissan = Nissan(model: "s200", kasaTipi: "binek", renk: "pembe", vites: "otomatik")
