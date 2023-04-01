//
//  FiltrVC.swift
//  World.uz
//
//  Created by Abduraxmon on 30/03/23.
//

import UIKit

class FiltrVC: UIViewController {
    
        
    @IBOutlet var searchViews: [UIView]!
    @IBOutlet weak var mainStackView: UIStackView!
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var searchContener: UIView!
    @IBOutlet weak var filterLbl1: UILabel!
    @IBOutlet weak var filterLbl2: UILabel!
    @IBOutlet weak var filterLbl3: UILabel!
    @IBOutlet weak var filterLbl4: UILabel!
    @IBOutlet weak var filterLbl5: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tableView1: UITableView!
    @IBOutlet weak var tableView2: UITableView!
    @IBOutlet weak var tableView3: UITableView!
    @IBOutlet weak var tableView4: UITableView!
    @IBOutlet var stackViews: [UIView]!
    
    var selectedCell = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        addShadow()
        addBorders()
        
        searchContener.layer.borderWidth = 1
        searchContener.layer.borderColor = UIColor(red: 0, green: 0.131, blue: 0.596, alpha: 1).cgColor
        
        mainView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    
        tableView.separatorStyle = .none
        tableView.layer.cornerRadius = 20
        tableView1.separatorStyle = .none
        tableView1.layer.cornerRadius = 20
        tableView2.separatorStyle = .none
        tableView2.layer.cornerRadius = 20
        tableView3.separatorStyle = .none
        tableView3.layer.cornerRadius = 20
        tableView4.separatorStyle = .none
        tableView4.layer.cornerRadius = 20
    }
    
    func addShadow() {
        for i in 0...4 {
            stackViews[i].layer.cornerRadius = 20
            stackViews[i].layer.shadowColor = UIColor.systemGray4.cgColor
            stackViews[i].layer.shadowOffset = CGSize(width: 0.0, height: 10)
            stackViews[i].layer.shadowOpacity = 0.5
            stackViews[i].layer.shadowRadius = 5
            stackViews[i].layer.masksToBounds = false
        }
    }
    
    func addBorders() {
        for i in 0...4 {
            searchViews[i].layer.borderColor = UIColor.systemGray4.cgColor
            searchViews[i].layer.borderWidth = 1
        }
    }
    
    func giveBorder() {
        
    }
    
    func setUpTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView1.dataSource = self
        tableView1.delegate = self
        
        tableView2.delegate = self
        tableView2.dataSource = self
        
        tableView3.delegate = self
        tableView3.dataSource = self
        
        tableView4.delegate = self
        tableView4.dataSource = self
        
        tableView1.register(UINib(nibName: "FilterTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        tableView.register(UINib(nibName: "FilterTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        tableView2.register(UINib(nibName: "FilterTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        tableView3.register(UINib(nibName: "FilterTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        tableView4.register(UINib(nibName: "FilterTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    @IBAction func revealPressed1(_ sender: UIButton) {
        let stackView = stackViews[sender.tag - 1]
        stackView.isHidden = stackView.isHidden ? false : true
    }
    
    
    @IBAction func searchPressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func searchBtnPressed(_ sender: Any) {
    }
    
}
extension FiltrVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        FilterData.courseType.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FilterTableViewCell
        
        cell.nameLbl.text = FilterData.courseType[indexPath.row]
        
        cell.contentView.layer.cornerRadius = 5
        cell.contentView.layer.masksToBounds = true
        
        if selectedCell == indexPath.row {
            cell.chooseIndicator.image = UIImage(systemName: "circle.fill")
            
            if tableView == self.tableView {
                filterLbl1.text = FilterData.courseType[selectedCell]
            } else if tableView == tableView1 {
                filterLbl2.text = FilterData.courseType[selectedCell]
            } else if tableView == tableView2 {
                filterLbl3.text = FilterData.courseType[selectedCell]
            } else if tableView == tableView3 {
                filterLbl4.text = FilterData.courseType[selectedCell]
            } else if tableView == tableView4 {
                filterLbl5.text = FilterData.courseType[selectedCell]
            }
            
        } else {
            cell.chooseIndicator.image = UIImage(systemName: "circle" )
        }
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        selectedCell = indexPath.row

        tableView.reloadData()
    }
    
}
