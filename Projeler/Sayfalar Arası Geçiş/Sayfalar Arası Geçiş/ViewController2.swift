//
//  ViewController2.swift
//  Sayfalar Arası Geçiş
//
//  Created by Ömer Özyılmaz on 23.12.2023.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    var mesaj:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        etiket.text=mesaj
        // Do any additional setup after loading the view.
    }
    
}
