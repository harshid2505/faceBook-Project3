//
//  homeTableViewCell.swift
//  Pods
//
//  Created by HARSHID PATEL on 11/08/23.
//

import UIKit

class homeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var dpImag: UIImageView!
    @IBOutlet weak var writeButton: UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        dpImag.layer.cornerRadius = dpImag.frame.width/2
        dpImag.layer.borderColor = UIColor.black.cgColor
        writeButton.layer.borderWidth = 1
        writeButton.layer.borderColor = UIColor.lightGray.cgColor
        writeButton.layer.cornerRadius = 22
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
