//
//  ViewController.swift
//  Duplicate Table View
//
//  Created by Ömer Özyılmaz on 4.02.2024.
//

import UIKit

class ViewController: UIViewController {

    
    var fruits = ["Fruits", "Color", "Season"]
    var fruitsData = [["Apple", "Banana", "Dragon Fruit", "starwberry"],["Green", "Yellow", "Red"],["Winter", "Summer"]]
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
    }

}
extension ViewController:UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return fruits.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitsData[section].count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return fruits[section]
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellName", for: indexPath)
        
        cell.textLabel?.text = fruitsData[indexPath.section][indexPath.row]
        return cell
    }
    
    
}
