//
//  ViewController.swift
//  PickerView Application
//
//  Created by Ömer Özyılmaz on 30.01.2024.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView?.delegate = self
        pickerView?.dataSource = self
        country = ["TR","ABD","UK","JAP","US"]
        
    }
    var country : [String] = [String]()
    var selectedCountry:String = ""
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var labelFinal: UILabel!
    
    
    @IBAction func look(_ sender: Any) {
        print(selectedCountry)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return country.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return country[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        labelFinal.text = country[row]
        selectedCountry = country[row]
    }
    
    
    
    

}

