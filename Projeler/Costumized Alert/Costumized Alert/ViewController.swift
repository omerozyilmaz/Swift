//
//  ViewController.swift
//  Costumized Alert
//
//  Created by Ömer Özyılmaz on 29.01.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var labelFinal: UILabel!
    @IBAction func basicAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title:"Title", message:"Message", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){
            action in print("Cancel That")
        }
        alertController.addAction(cancelAction)
        
        let okeyAction = UIAlertAction(title: "Okey", style: .destructive){
            action in print("Okey That")
        }
        alertController.addAction(okeyAction)
        self.present(alertController, animated: true)
        
    }
    
    @IBAction func specialAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title:"Title", message:"Message", preferredStyle: .alert)
        
        alertController.addTextField{ textField in
            
            textField.placeholder = "Email"
            textField.keyboardType = .emailAddress
        }
        
        alertController.addTextField{ textField in
            textField.placeholder = "password"
            textField.isSecureTextEntry = true
        }
        
        
        let saveAction = UIAlertAction(title: "Save", style: .destructive){
            action in print("Save That")
            
            let saveEmail = (alertController.textFields![0] as UITextField).text!
            let passwordEmail = (alertController.textFields![1] as UITextField).text!
            
            self .labelFinal.text = "Email : \(saveEmail) - password : \(passwordEmail)"
            
        }
        alertController.addAction(saveAction)
        self.present(alertController, animated: true)
        
        
        
    }
    @IBAction func actionSheet(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Action Sheet", message: "Message", preferredStyle: .actionSheet)
//
//        alertController.addTextField{ textField in
//            textField.placeholder = "Your Twitter #Username"
//            textField.keyboardType = .twitter
//        }
//          You can`t use for action sheet
        let cancelController = UIAlertAction(title: "Cancel", style: .cancel){
            action in print("ActionSheet Cancel That")
        }
        alertController.addAction(cancelController)
        
        let okeyController = UIAlertAction(title: "Okey", style: .destructive){
            action in print("ActionSheet Okey That")
        }
        alertController.addAction(okeyController)
        
        self.present(alertController, animated: true)
        
    }
    
    
}

