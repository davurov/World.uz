//
//  LanguageVC.swift
//  World.uz
//
//  Created by Abduraxmon on 28/03/23.
//

import UIKit

class LanguageVC: UIViewController {

    @IBOutlet weak var uzbView: UIView!
    @IBOutlet weak var englishView: UIView!
    @IBOutlet weak var rusView: UIView!
    @IBOutlet weak var uzbLbl: UILabel!
    @IBOutlet weak var rusLbl: UILabel!
    @IBOutlet weak var englishLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uzbView.layer.borderWidth = 1
        uzbView.layer.borderColor = UIColor.systemGray6.cgColor
        rusView.layer.borderWidth = 1
        rusView.layer.borderColor = UIColor.systemGray6.cgColor
        englishView.layer.borderWidth = 1
        englishView.layer.borderColor = UIColor.systemGray6.cgColor
        
    }
    
    @IBAction func languageBtnPressed(_ sender: UIButton) {
        
        let color = UIColor(red: 0, green: 0.131, blue: 0.596, alpha: 1)
        
        switch sender.tag {
        case 0:
            uzbView.backgroundColor = color
            uzbLbl.textColor = .white
            uzbView.layer.borderWidth = 0
        case 1:
            rusView.backgroundColor = color
            rusLbl.textColor = .white
            rusView.layer.borderWidth = 0
        case 2:
            englishView.backgroundColor = color
            englishLbl.textColor = .white
            englishLbl.layer.borderWidth = 0
        default: return
        }
        
        let vc = WelcomVC(nibName: "WelcomVC", bundle: nil)
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
        
    }
    
}
