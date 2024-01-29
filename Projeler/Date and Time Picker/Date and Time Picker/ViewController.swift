//
//  ViewController.swift
//  Date and Time Picker
//
//  Created by Ömer Özyılmaz on 29.01.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Date Picker
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        textFieldDate.inputView = datePicker
        datePicker?.addTarget(self, action: #selector(self.dateShow(datePicker:)), for: .valueChanged)
        
        //Time Picker
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        textFieldDate.inputView = timePicker
        timePicker?.addTarget(self, action: #selector(self.timeShow(timePicker:)), for: .valueChanged)
        
        
        let selectSensor = UITapGestureRecognizer(target: self, action: #selector(self.selectSensorMetod))
        view.addGestureRecognizer(selectSensor)
        
    }
    @IBOutlet weak var textFieldDate: UITextField!
    @IBOutlet weak var textFieldTime: UITextField!
    
    var datePicker:UIDatePicker?
    var timePicker:UIDatePicker?
    
    @objc func dateShow (datePicker:UIDatePicker){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let takedDate = dateFormatter.string(from: datePicker.date)
        
        textFieldDate.text = takedDate
        
        // view.endEditing(true)
    }
    
    @objc func timeShow(timePicker:UIDatePicker){
        let dateFormatter = DateFormatter()
        
    }
    
    
    @objc func selectSensorMetod(){
        view.endEditing(true)
    }
    
    
    
}

