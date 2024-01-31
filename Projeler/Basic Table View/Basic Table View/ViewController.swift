//
//  ViewController.swift
//  Basic Table View
//
//  Created by Ömer Özyılmaz on 30.01.2024.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var country:[String] = [String] ()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup  after loading the view.
        country = ["Turkey","Greece","England","Poland","France","America"]
        
        //Table View
        tableView.delegate = self
        tableView.dataSource = self
    }
    @IBOutlet weak var tableView: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return country.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellName", for: indexPath)
        cell.textLabel?.text = country[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
            
        let silAction = UIContextualAction(style: .destructive, title: "Cancel"){
            (UIContextualAction, view, boolValue) in
            print("Please delete \(self.country[indexPath.row]) ")
        }
        
        let editAction = UIContextualAction(style: .normal, title: "Edit"){
            (UIContextualAction, view, boolValue) in
            print("Please edit \(self.country[indexPath.row])")
        }
        return UISwipeActionsConfiguration(actions: [silAction,editAction])
        
    }
    
    
    
}

