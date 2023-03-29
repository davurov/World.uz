//
//  UniverCollectionViewCell.swift
//  World.uz
//
//  Created by Abduraxmon on 29/03/23.
//

import UIKit

class UniverCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var univerName: UILabel!
    @IBOutlet weak var univerPhoto: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setGradientBackground()
    }
      
    func setGradientBackground() {
        let colorTop =  UIColor(red: 1, green: 0.75, blue: 0.915, alpha: 1).cgColor
        let colorBottom = UIColor(red: 0.006, green: 0.149, blue: 0.667, alpha: 1).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.mainView.bounds
                
        self.mainView.layer.insertSublayer(gradientLayer, at:0)
    }

    @IBAction func morePressed(_ sender: Any) {
    }
}
