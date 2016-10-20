//
//  TableViewCell.swift
//  Project1
//
//  Created by Enkhtushig Namkhai on 10/19/16.
//  Copyright © 2016 EnkhtushigNamkhai. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var DateLabel: UILabel!
    @IBOutlet var TitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
