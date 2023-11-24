import UIKit


var dizi1 = Set <Int> ()

var dizi2 : Set = ["Bursa","Ankara","istanbul"]
//Aynı türden verileri tekrar tekrar kaydedemezsin

var meyveler : Set = ["Çilek","Muz","Elma","Kivi"]

for (index,meyve) in meyveler.enumerated(){
    
    print (index,meyve)
}
