//
//  ViewController.swift
//  Sayfalar Arası Geçiş
//
//  Created by Ömer Özyılmaz on 23.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var girdiAlani: UITextField!
    
    
    @IBAction func gonder(_ sender: Any) {
        
        let storyboard = UIStoryboard(name:"Main" , bundle: nil)
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier:"sayfaB") as! ViewController2
        let gonderilecekMesa = girdiAlani.text
       // self.present(gidilecekViewController, animated: true, completion: nil)
        self.navigationController?.pushViewController(gidilecekViewController, animated: true)
    }
}

