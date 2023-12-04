import UIKit
//Protocoller içlerinde ki metodları kullandırmaya çalışır.
protocol Squeezable {
    func howToSqueez()
}
protocol Eatable {
    func howToEAt()
}
class Aslan {
    
}
class Tavuk:Eatable{
    func howToEAt() {
        print("Fırında pişirin")
    }
}

class Elma:Squeezable,Eatable{
    func howToEAt() {
        print("Elmayı yıka ve ye")
    }
    
    func howToSqueez() {
        print("Elmayı yıka ve sık")
    }

}

class AmasyaElması:Elma{
    override func howToEAt() {
            print("Dilimle ve ye")
    }
}

var aslan = Aslan()
var amasyaEalması:Elma = AmasyaElması()
var tavuk:Eatable = Tavuk()
var elma = Elma()
var nesneler = [aslan,elma,tavuk,amasyaEalması] as [Any] //Burada ki tüm nesneleri aynı şekilde alması için any kullandık.

    // amasya elması kalıtım yoluyla aldığı için hem pişirilebilir hem de sıkılabilir olduğu için iki if'i de çalıştırdı

for nesne in nesneler {
    if nesne is Eatable {
        (nesne as! Eatable).howToEAt()
    }
    if nesne is Squeezable {
        (nesne as! Squeezable).howToSqueez()
    }
}

