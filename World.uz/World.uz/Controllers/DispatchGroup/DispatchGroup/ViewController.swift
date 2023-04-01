//
//  ViewController.swift
//  DispatchGroup
//
//  Created by Abduraxmon on 01/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    var HAha: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func loadData() async -> String {
        var info : String?
        DispatchQueue.main.async {
            info = "Hola"
        }
        
        return info!
    }
    
    func proccesWheather() async {
        let finalData = await loadView()
    }

    
   
}
    
