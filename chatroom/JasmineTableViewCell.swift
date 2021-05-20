//
//  JasmineTableViewCell.swift
//  chatroom
//
//  Created by Yang Nina on 2021/5/14.
//

import UIKit

class JasmineTableViewCell: UITableViewCell {

   
    @IBOutlet weak var JasmineText: UITextView!
    @IBOutlet weak var JasmineImg: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        JasmineText.textContainerInset = .init(top: 10, left: 10, bottom: 10, right: 10)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
