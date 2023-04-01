//
//  FilterTableViewCell.swift
//  World.uz
//
//  Created by Abduraxmon on 31/03/23.
//
import UIKit

class FilterTableViewCell: UITableViewCell {

    @IBOutlet weak var chooseIndicator: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
