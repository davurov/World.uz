//
//  WelcomVC.swift
//  World.uz
//
//  Created by Abduraxmon on 28/03/23.
//

import UIKit

class WelcomVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func nextPressed(_ sender: Any) {
        let vc = SignInVC(nibName: "LoginVC", bundle: nil)
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
}
