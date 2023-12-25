//
//  ViewController.swift
//  NavigationCostumizetion
//
//  Created by Ömer Özyılmaz on 24.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Title"
        self.navigationItem.prompt = "Prompt"

        navigationController?.navigationBar.prefersLargeTitles = true
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.red
        appearance.titleTextAttributes = [.foregroundColor:UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor:UIColor.white]
        
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }

    @IBAction func buttonAdd(_ sender: Any) {
        print("Add Clicket")	
    }
    
}

