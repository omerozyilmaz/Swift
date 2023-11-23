import UIKit

//Rastgele sayı

for _ in 1...10 {
    let rastegeleSayi = Int (arc4random_uniform(10)) //0 ile 10 arası rastgele sayı oluşturur
}

//Matematiksel işlemler

let c = ceil(6.5) //hep yukarıya yuvarlıcak
print(c)

let f = floor(6.5) // hep aşağıya yuvarlıcak

let d = sqrt (4.0) //karekök

let g = pow(2.0, 8.0)  // üssü şeklinde

let a = abs(-10) // pozitif yapar

let tarih = Date()

let takvim = Calendar.current

let yil = takvim.component(.year, from: tarih)

let ay = takvim.component(.month, from: tarih)

 
