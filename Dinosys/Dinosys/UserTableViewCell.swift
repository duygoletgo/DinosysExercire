//
//  UserTableViewCell.swift
//  Dinosys
//
//  Created by Duy on 12/21/16.
//  Copyright © 2016 QuanChung. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var imvAvarta: UIImageView!
    @IBOutlet weak var nameUser: UILabel!
    @IBOutlet weak var emailUser: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.imvAvarta.layer.cornerRadius = 25
        self.imvAvarta.layer.borderWidth = 1.0
        self.imvAvarta.layer.masksToBounds = true
        self.imvAvarta.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
