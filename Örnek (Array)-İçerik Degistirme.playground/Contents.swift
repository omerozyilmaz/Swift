import UIKit

var sayilar = [1,2,3,4,5]

for (index, s) in sayilar.enumerated(){
    
    sayilar[index] = s*s
}
print(sayilar)

