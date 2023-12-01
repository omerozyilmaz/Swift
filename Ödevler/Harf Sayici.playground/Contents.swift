import UIKit
class KelimeSayici{
    func sayici(kelime : String, harf : Character){
        
        var sayac = 0
        
        for i in kelime {
            if i == harf{
                sayac = sayac + 1
            }
        }

        print(sayac)
    }
}

let sonuc = KelimeSayici()

KelimeSayici().sayici(kelime: "ssssaaadd", harf: "a")




