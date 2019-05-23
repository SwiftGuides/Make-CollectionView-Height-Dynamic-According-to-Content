//
//  test2TableViewCell.swift
//  collectionViewCustomHeaderDemo
//
//  Created by MacMini on 5/15/19.
//  Copyright © 2019 Immanent. All rights reserved.
//

import UIKit

class test2TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var testCollectionView: UICollectionView!
    
    @IBOutlet weak var heightContraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
