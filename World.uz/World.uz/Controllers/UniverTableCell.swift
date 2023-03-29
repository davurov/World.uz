//
//  UniverTableCell.swift
//  World.uz
//
//  Created by Abduraxmon on 29/03/23.
//

import UIKit

class UniverTableCell: UITableViewCell {

    @IBOutlet weak var view: UIView!
    override func awakeFromNib() {
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.systemGray5.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
