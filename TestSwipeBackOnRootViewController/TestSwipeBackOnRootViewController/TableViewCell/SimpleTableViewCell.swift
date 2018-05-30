//
//  SimpleTableViewCell.swift
//  TestSwipeBackOnRootViewController
//
//  Created by Ali Saeedifar on 5/30/18.
//  Copyright © 2018 Ali Saeedifar. All rights reserved.
//

import UIKit

class SimpleTableViewCell: UITableViewCell {

    @IBOutlet weak private var simpleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func update(title: String) {
        self.simpleLabel.text = title
    }
    
}
