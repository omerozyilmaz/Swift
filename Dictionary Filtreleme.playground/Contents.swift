import UIKit

var okul:[Int:String] = [145:"Aydınlıkevler",70:"İnönü",100:"Gazi",20:"ODTÜ"]

var sonuc = okul.filter({$0.key > 20 })
print(sonuc)
