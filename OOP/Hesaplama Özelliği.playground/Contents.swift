import UIKit

class FizikNotları{
    
    var vize1 = 100
    var vize2 = 84.3
    var final = 30
    
    var ortalama : Double {
        get {
            let vizeOrtalama1 = Double(vize1) * 0.3
            let vizeOrtalama2 = vize2 * 0.3
            let finalOrtalama = Double(final) * 0.4
            
            return ( vizeOrtalama1 + vizeOrtalama2 + finalOrtalama )
        }
        
        set(yeniFinal) {
            self.final = Int(yeniFinal)
        }
    }
         
}

var omer = FizikNotları()
omer.final = 100


print(omer.ortalama)
