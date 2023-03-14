//
//  TableViewCell.swift
//  Final_test_task
//
//  Created by Nurlan Seitov on 15/3/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var imageViewtvc: UIImageView!
    
    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var labelPhone: UILabel!
    
    public func initUI(name: String, phone: String, image: String) {
        labelName.text = name
        labelPhone.text = phone
        imageViewtvc.image = UIImage(named: image)
        imageViewtvc.contentMode = .scaleAspectFill
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
