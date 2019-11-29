//
//  ImageCell.swift
//  Bai3.4
//
//  Created by APPLE on 11/29/1 R.
//  Copyright © 1 Reiwa APPLE. All rights reserved.
//

import UIKit

class ImageCell: UITableViewCell {

    @IBOutlet weak var lbText: UILabel!
    @IBOutlet weak var heightImgView: NSLayoutConstraint!
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
