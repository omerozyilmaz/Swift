//
//  ViewController.swift
//  IOS Yasam Dongusu Senaryosu
//
//  Created by Ömer Özyılmaz on 4.01.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewdDidLoad calisti")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear calisti")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear calisti")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear calisti")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear calisti")
    }
}

