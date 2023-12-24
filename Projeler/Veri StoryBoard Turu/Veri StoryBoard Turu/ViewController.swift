//
//  ViewController.swift
//  Veri StoryBoard Turu
//
//  Created by Ömer Özyılmaz on 23.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girdiAlani: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let gidecekMesaj = girdiAlani.text!
        
        
        
        if segue.identifier == "aToB" {
            print("A dan B ye gecis")
            
            let gidilecekVC = segue.destination as! ViewControllerB
            gidilecekVC.mesajB = gidecekMesaj
        }
        if segue.identifier == "aToC" {
            print("A dan C ye gecis")
            
            let gidilecekVC = segue.destination as! ViewControllerC
            gidilecekVC.mesajC = gidecekMesaj
            
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

