//
//  ResultCell.swift
//  World.uz
//
//  Created by Abduraxmon on 01/04/23.
//

import UIKit

class ResultCell: UITableViewCell {
    
    @IBOutlet weak var ColorView: UIView!
    @IBOutlet weak var univerTypeLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setUpColor()
    }
    
    func setUpColor() {
        let colorTop =  UIColor(red: 0.128, green: 0.182, blue: 0.367, alpha: 1).cgColor
        let colorBottom =  UIColor(red: 0.128, green: 0.182, blue: 0.367, alpha: 0.34).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 2.0]
        gradientLayer.frame = self.ColorView.bounds
                
        self.ColorView.layer.insertSublayer(gradientLayer, at:0)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    
    @IBAction func likedBtnPressed(_ sender: Any) {
    }
    
    
}
