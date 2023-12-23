//
//  ViewController.swift
//  Sayfalar Arasi Gecis
//
//  Created by Ömer Özyılmaz on 23.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girdiAlani: UITextField!

    @IBAction func gonder(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekViewController = storyBoard.instantiateViewController(withIdentifier: "sayfaB") as! ViewControllerB
        
        // Passing data from girdiAlani to mesa in ViewControllerB
        let gonderilecekMesaj = girdiAlani.text
        
        gidilecekViewController.mesa = gonderilecekMesaj!
        
        _ = Kisiler(kisiAd: "Aleyna", kisiId: 223)
        
        // Presenting ViewControllerB
        //self.present(gidilecekViewController, animated: true, completion: nil)
    
        self.navigationController?.pushViewController(gidilecekViewController, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

