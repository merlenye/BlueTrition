//
//  ABPTableViewCell.swift
//  DukeCalories
//
//  Created by Merle Nye on 10/13/18.
//  Copyright © 2018 Merle Nye. All rights reserved.
//

import UIKit

class ABPTableViewCell: UITableViewCell {

    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    //@IBOutlet weak var updateCalories: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
