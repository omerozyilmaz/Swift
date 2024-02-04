//
//  ViewController.swift
//  Custom Cell Table View**
//
//  Created by Ömer Özyılmaz on 4.02.2024.
//

import UIKit

class ViewController: UIViewController {

    var peopleList = [People]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        // People list
        let p1 = People(personId: 358462, personName: "Sila", personTelNo: 548658265)
        let p2 = People(personId: 456554, personName: "Aleyna", personTelNo: 5521645)
        let p3 = People(personId: 775875, personName: "Hamza", personTelNo: 6488535)
        let p4 = People(personId: 888975, personName: "Mahmut", personTelNo: 45455753)
        let p5 = People(personId: 989752, personName: "Omer", personTelNo: 78743435)
        
        peopleList.append(p1)
        peopleList.append(p2)
        peopleList.append(p3)
        peopleList.append(p4)
        peopleList.append(p5)
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    
}
extension ViewController:UITableViewDataSource,UITableViewDelegate,TableViewCellProtocol {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopleList.count
    }
    func pressButton(indexPath: IndexPath) {
        print("Pressted Button for \(peopleList[indexPath.row].personId!)")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let peopleData = peopleList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! TableViewCell
        cell.peopleNameLabel.text = "\(peopleData.personName!) : \(peopleData.personId!)"
        cell.cellProtocol = self
        cell.indexPath = indexPath
        return cell
        
    }
}
