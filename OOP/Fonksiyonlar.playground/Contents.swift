import UIKit

func selamla (){
    let sonuc = "Merhaba Ömer"
    print(sonuc)
}

selamla()

//geri değer döndürmeden


func selamla1 () -> String {
    let sonuc = "Merhaba Ömer"
    return sonuc
}

var gelenveri = selamla1()
print(gelenveri)

func selamla2 (isim : String){
    let sonuc = "Merhaba \(isim)"
    print(sonuc)
}

selamla2(isim: "Ahmet")

func toplama (sayi1 : Int, sayi2 : Int) -> Int {
    let toplama = sayi1 + sayi2
    return toplama
}

var t1 = toplama(sayi1: 20, sayi2: 30)

print("Toplama 1 : \(t1)")
