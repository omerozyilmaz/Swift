//
//  TableViewCell.swift
//  Custom Cell Table View**
//
//  Created by Ömer Özyılmaz on 4.02.2024.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var peopleNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
