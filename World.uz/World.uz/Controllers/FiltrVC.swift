//
//  FiltrVC.swift
//  World.uz
//
//  Created by Abduraxmon on 30/03/23.
//

import UIKit

class FiltrVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var stack1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func setUpTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "SideMenuCell", bundle: nil), forCellReuseIdentifier: "cell")
    }

    @IBAction func revealPressed1(_ sender: Any) {
        stack1.isHidden = false
    }
}
extension FiltrVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        return cell
    }
    
    
}
