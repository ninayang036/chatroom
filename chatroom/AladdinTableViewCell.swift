//
//  AladdinTableViewCell.swift
//  chatroom
//
//  Created by Yang Nina on 2021/5/12.
//

import UIKit

class AladdinTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var AladdinText: UITextView!
    @IBOutlet weak var AladdinImg: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
