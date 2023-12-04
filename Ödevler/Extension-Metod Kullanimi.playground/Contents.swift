import UIKit

extension String {
    func yerdegistir (yeniHArf:String, eskiHarf:String) -> String {
        return self.replacingOccurrences(of: yeniHArf, with: eskiHarf)
    }
    
}

let str = "ankara".yerdegistir(yeniHArf: "a", eskiHarf: "b")
print(str)
