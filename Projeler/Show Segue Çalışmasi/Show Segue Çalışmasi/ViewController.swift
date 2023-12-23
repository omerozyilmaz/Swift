//
//  ViewController.swift
//  Show Segue Çalışmasi
//
//  Created by Ömer Özyılmaz on 22.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goTo2(_ sender: Any) {
        
        let nesne = People(personId: 222, personName: "Aleyna")
        performSegue(withIdentifier: "goFrom1To2", sender: nesne)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let comeData = sender as? People
        
        print ("Coming Data : \(comeData!.personId!) \(comeData!.personName!)")
        
        print("Transition from one to two")
    }
}

