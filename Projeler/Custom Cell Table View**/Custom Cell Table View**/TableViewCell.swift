//
//  TableViewCell.swift
//  Custom Cell Table View**
//
//  Created by Ömer Özyılmaz on 4.02.2024.
//

import UIKit

protocol TableViewCellProtocol {
    func pressButton(indexPath:IndexPath)
}
class TableViewCell: UITableViewCell {

    @IBOutlet weak var peopleNameLabel: UILabel!
    
    var cellProtocol:TableViewCellProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func cellButton(_ sender: Any) {
        cellProtocol?.pressButton(indexPath: indexPath!)
    }
    
}
