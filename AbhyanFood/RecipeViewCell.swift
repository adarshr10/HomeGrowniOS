//
//  RecipeViewCell.swift
//  AbhyanFood
//
//  Created by Brendon Ho on 11/11/18.
//  Copyright © 2018 Brendon Ho. All rights reserved.
//

import UIKit

class RecipeViewCell: UITableViewCell {

    @IBOutlet weak var recImage: UIImageView!
    @IBOutlet weak var recLabel: UILabel!
    @IBOutlet weak var recView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        recView.layer.cornerRadius = 15
        recImage.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
