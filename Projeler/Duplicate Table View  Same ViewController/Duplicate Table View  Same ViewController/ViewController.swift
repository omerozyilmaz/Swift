//
//  ViewController.swift
//  Duplicate Table View  Same ViewController
//
//  Created by Ömer Özyılmaz on 4.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewCountry: UITableView!
    @IBOutlet weak var tableViewCity: UITableView!
    var country:[String] = [String]()
    var city:[String] = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
     
        country = ["Turkey", "Germany", "japan", "Russian", "Italy"]
        city = ["Istanbul", "Ankara", "Bursa", "Kayseri"]
        tableViewCity.dataSource = self
        tableViewCity.delegate = self
        tableViewCountry.dataSource = self
        tableViewCountry.delegate = self
    }
    
}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var dataNumber:Int?
        
        if tableView == tableViewCity{
            dataNumber = city.count
        }
        if tableView == tableViewCountry{
            dataNumber = country.count
        }
        
        return dataNumber!
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:UITableViewCell?
        if tableView == tableViewCity{
            cell = tableView.dequeueReusableCell(withIdentifier: "cityCell", for: indexPath)
            cell?.textLabel?.text = city[indexPath.row]
        }
        if tableView == tableViewCountry{
            cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)
            cell?.textLabel?.text = country[indexPath.row]
        }
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tableViewCity{
            print("Select City \(city[indexPath.row])")
        }
        if tableView == tableViewCountry{
            print("Select Country \(country[indexPath.row])")
        }
    }
    
    
}
