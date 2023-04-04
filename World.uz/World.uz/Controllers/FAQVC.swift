//
//  FAQVC.swift
//  World.uz
//
//  Created by Abduraxmon on 04/04/23.
//

import UIKit

class FAQVC: UIViewController {
    
    @IBOutlet var answerViews: [UIView]!
    @IBOutlet var questionView: [UIView]!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet var revealBtns: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addBorders()
        addShadow()
    }
    
    func addBorders() {
        for i in 0...3 {
            questionView[i].layer.borderColor = UIColor.systemGray5.cgColor
            questionView[i].layer.borderWidth = 1
        }
        textView.layer.borderColor = UIColor.systemGray5.cgColor
        textView.layer.borderWidth = 1
    }
    
    func addShadow() {
        addBtn.layer.shadowColor = UIColor(red: 0, green: 0.129, blue: 0.596, alpha: 0.6).cgColor
        addBtn.layer.shadowOffset = CGSize(width: 0.0, height: 10)
        addBtn.layer.shadowOpacity = 0.8
        addBtn.layer.shadowRadius = 5
        addBtn.layer.masksToBounds = false
    }
    
    
    @IBAction func revealBtnPressed(_ sender: UIButton) {
        answerViews[sender.tag].isHidden = false
        revealBtns[sender.tag].setImage(UIImage(named: "m1.png"), for: .normal)
        
        for ind in 0...3 {
            if ind != sender.tag {
                answerViews[ind].isHidden = true
                revealBtns[sender.tag].setImage(UIImage(named: "m2.png"), for: .normal)
            }
        }
    }
    
}
