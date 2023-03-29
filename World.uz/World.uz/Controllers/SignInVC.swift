//
//  LoginVC.swift
//  World.uz
//
//  Created by Abduraxmon on 28/03/23.
//

import UIKit

class SignInVC: UIViewController {
    
    @IBOutlet weak var signLbl: UIStackView!
    @IBOutlet weak var gmailView: UIView!
    @IBOutlet weak var facebookView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        giveShadow()
        
        signLbl.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(signInPressed))
        signLbl.addGestureRecognizer(tap)
    }
    
    func giveShadow() {
        gmailView.layer.shadowColor = UIColor.systemGray4.cgColor
        gmailView.layer.shadowOffset = CGSize(width: 0.0, height: 10)
        gmailView.layer.shadowOpacity = 0.5
        gmailView.layer.shadowRadius = 5
        gmailView.layer.masksToBounds = false
        
        facebookView.layer.shadowColor = UIColor.systemGray4.cgColor
        facebookView.layer.shadowOffset = CGSize(width: 0.0, height: 10)
        facebookView.layer.shadowOpacity = 0.5
        facebookView.layer.shadowRadius = 5
        facebookView.layer.masksToBounds = false
    }
    
    @objc func signInPressed() {
        
        let vc = LogInVC(nibName: "SignIn", bundle: nil)
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
        
    }
    
    @IBAction func gmailPressed(_ sender: Any) {
    }
    
    @IBAction func facebookPressed(_ sender: Any) {
    }
    
    
    @IBAction func signUpPressed(_ sender: Any) {
    }
    
    @IBAction func guestPressed(_ sender: Any) {
        pushVC()
    }
    
    func pushVC() {
        let vc = MainVC(nibName: "MainVC", bundle: nil)
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
}
