//
//  MainVC.swift
//  World.uz
//
//  Created by Abduraxmon on 29/03/23.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var univerView: UIView!
    
    @IBOutlet weak var countryView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func filterBtnPressed(_ sender: UIButton) {
        
        if sender.tag == 0 {
            univerView.backgroundColor = .white
            countryView.backgroundColor = .clear
        } else {
            countryView.backgroundColor = .white
            univerView.backgroundColor = .clear
        }
        
    }
}
