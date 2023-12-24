//
//  ViewControllerB.swift
//  Veri StoryBoard Turu
//
//  Created by Ömer Özyılmaz on 23.12.2023.
//

import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var etiketB: UILabel!
    
    var mesajB:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        etiketB.text = mesajB

    }

}
