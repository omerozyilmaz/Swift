//
//  ViewController.swift
//  PickerView Exercise with TextField
//
//  Created by Ömer Özyılmaz on 30.01.2024.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //PickerView for country
        pickerView = UIPickerView()
        pickerView?.delegate = self
        pickerView?.dataSource = self
        country = ["Select Country","JAP","TR","US","UK"]
        textFieldCountry.inputView = pickerView
        
        //PickerView for Secound Country
        secoundPickerView = UIPickerView()
        secoundPickerView?.delegate = self
        secoundPickerView?.dataSource = self
        secoundCountry = ["Select Secound Country","Turkey","Greece","Holand","Thailand"]
        secoundTextFieldCountry.inputView = secoundPickerView
        //Toolbar one
        let toolBar = UIToolbar()
        toolBar.tintColor = UIColor.red
        toolBar.sizeToFit()
        
        let okeyButton = UIBarButtonItem(title: "Okey", style: .plain, target: self, action: #selector(ViewController.okeySelect))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(ViewController.cancelSelect))
        
        toolBar.setItems([cancelButton, spaceButton, okeyButton], animated: true)
        
        
        textFieldCountry.inputAccessoryView = toolBar
        secoundTextFieldCountry.inputAccessoryView = toolBar
        
        //Toolbar Two
        
        
    }
    
    @IBOutlet weak var textFieldCountry: UITextField!
    
    @IBOutlet weak var secoundTextFieldCountry: UITextField!
    
    var pickerView:UIPickerView?
    var secoundPickerView:UIPickerView?
    var country:[String] = [String]()
    var secoundCountry:[String] = [String]()
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == self .pickerView {
            return country.count
        } else if pickerView == secoundPickerView {
            return secoundCountry.count
        } else  {
            return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == self.pickerView {
            return country[row]
        } else if pickerView == secoundPickerView {
            return secoundCountry[row]
        } else {
            return nil
        }
    }

    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if pickerView == self .pickerView{
            textFieldCountry.text = country[row]
        } else if pickerView == secoundPickerView{
            secoundTextFieldCountry.text = secoundCountry[row]}
    }
    

    
    //Okey button
    @objc func okeySelect() {
        view.endEditing(true)
    }
     
    //Cancel button
    @objc func cancelSelect (){
        textFieldCountry.text=""
        textFieldCountry.placeholder = "Select Country"
        secoundTextFieldCountry.text=""
        secoundTextFieldCountry.placeholder = "Select Secound Country"
        view.endEditing(true)
    }
    
}

