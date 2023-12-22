//
//  ViewController.swift
//  Present Modally
//
//  Created by Ömer Özyılmaz on 21.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goTo2(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "Page2") as! ViewController2
        
        self.present(gidilecekViewController, animated: true,completion: nil)
    }
    
}

