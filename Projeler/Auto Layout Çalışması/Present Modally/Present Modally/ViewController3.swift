//
//  ViewController3.swift
//  Present Modally
//
//  Created by Ömer Özyılmaz on 21.12.2023.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func pressDismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func goTo1(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "Page1") as! ViewController
        
        self.present(gidilecekViewController, animated: true,completion: nil)
    }
}
