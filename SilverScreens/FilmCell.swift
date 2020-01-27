//
//  FilmCell.swift
//  SilverScreens
//
//  Created by Kedar Abhyankar on 1/22/20.
//  Copyright © 2020 Kedar Abhyankar. All rights reserved.
//

import UIKit

class FilmCell: UITableViewCell {
    
    @IBOutlet weak var imagePoster: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
