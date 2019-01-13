//
//  CarTableViewCell.swift
//  GasDepot
//
//  Created by Josue Quiñones on 1/12/19.
//  Copyright © 2019 Josue Quiñones. All rights reserved.
//

import UIKit

class CarTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func showCheck(check: Bool) {
        if check {
            accessoryType = .checkmark
        } else {
            accessoryType = .none
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        accessoryType = .none
    }
    
    

}
