import UIKit

var dersler = ["Matematik", "Fizik", "Kimya", "Biyoloji"]

var notlar = [60 ,70, 80, 90]

var dersNotları = Dictionary(uniqueKeysWithValues: zip(notlar, dersler))

print(dersNotları)

var urunFiyatları:[Double:String] = [15.99:"Kitap",59.99:"Müzik",29.99:"Saat"]

var urunler = [String](urunFiyatları.values)

var fiyatlar = [Double](urunFiyatları.keys)

print(urunler)

print(fiyatlar)
