//
//  DetailedTableViewCell.swift
//  MVP Sample
//
//  Created by Mallikarjun on 27/11/18.
//  Copyright © 2018 Mallikarjun. All rights reserved.
//

import UIKit

class DetailedTableViewCell: UITableViewCell {

    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        headerLabel?.numberOfLines = 0
        descriptionLabel?.numberOfLines = 0
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func configure(title:String,desciption : String) {
        headerLabel?.text = title
        descriptionLabel?.text = desciption
    }
    
}
