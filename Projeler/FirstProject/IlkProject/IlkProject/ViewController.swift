//
//  ViewController.swift
//  IlkProject
//
//  Created by Ömer Özyılmaz on 21.12.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var ticket: UILabel!
    
    @IBAction func press(_ sender: Any) {
        
        ticket.text = "Button Pressed"
    }
    
      
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ticket.text = "Hello"
        etiket[0].text = "Hey 1"
        etiket[1].text = "Hey 2"
    }

    @IBOutlet var etiket: [UILabel]!
    
}
