//
//  genderTableViewCell.swift
//  
//
//  Created by HARSHID PATEL on 02/08/23.
//

import UIKit

class genderTableViewCell: UITableViewCell {
    
    @IBOutlet weak var genderLable: UILabel!
    
    @IBOutlet weak var redioButton: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
}
