//
//  TodoTableViewCell.swift
//  pia12uikit
//
//  Created by BillU on 2024-01-15.
//

import UIKit

class TodoTableViewCell: UITableViewCell {

    
    @IBOutlet weak var todoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
