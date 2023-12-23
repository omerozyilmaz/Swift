//
//  ViewControllerB.swift
//  Sayfalar Arasi Gecis
//
//  Created by Ömer Özyılmaz on 23.12.2023.
//

import UIKit

class ViewControllerB: UIViewController {

    
    @IBOutlet weak var etiket: UILabel!
    var mesa:String?
    var kisi = Kisiler(kisiAd: "John Doe", kisiId: 123)
    override func viewDidLoad() {

        super.viewDidLoad()
        if let unwrappedMesa=mesa{
            etiket.text = unwrappedMesa
        } else {
            // Mesa'nın nil olduğu durumu ele alın, örneğin varsayılan bir değer ayarlayın veya bir hata gösterin
            etiket.text = "Varsayılan Metin" // veya bir hata mesajı gösterin
        }
        
        print("Kisi : \(kisi.kisiId) \(kisi.kisiAd)")
    }
    }
    
