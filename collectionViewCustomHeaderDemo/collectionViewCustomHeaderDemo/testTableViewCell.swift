//
//  testTableViewCell.swift
//  collectionViewCustomHeaderDemo
//
//  Created by MacMini on 5/15/19.
//  Copyright © 2019 Immanent. All rights reserved.
//

import UIKit

class testTableViewCell: UITableViewCell {

    @IBOutlet var testLabel:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
