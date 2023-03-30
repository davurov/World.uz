//
//  MainVC.swift
//  World.uz
//
//  Created by Abduraxmon on 29/03/23.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var blurView: UIView!
    @IBOutlet weak var sideMenuView: UIView!
    @IBOutlet weak var menuBarTableViwe: UITableView!
    @IBOutlet weak var searchLbl: UILabel!
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var univerView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var countryView: UIView!
    @IBOutlet weak var searchTF: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollectionView()
        setUpTableView()
        tapBlurView()
        searchTF.addTarget(self, action: #selector(didStartEditing), for: .editingDidBegin)
    }
    
    func setUpCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "UniverCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        searchView.layer.borderWidth = 1
        searchView.layer.borderColor = UIColor(red: 0.043, green: 0.192, blue: 0.722, alpha: 1).cgColor
    }
    
    func setUpTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        menuBarTableViwe.delegate = self
        menuBarTableViwe.dataSource = self
        tableView.register(UINib(nibName: "UniverTableCell", bundle: nil), forCellReuseIdentifier: "cell")
        menuBarTableViwe.register(UINib(nibName: "SideMenuCell", bundle: nil), forCellReuseIdentifier: "cell2")
    }
    
    func tapBlurView() {
        blurView.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(blurViewTapped))
        blurView.addGestureRecognizer(tap)
        
    }
    
    @objc func didStartEditing() {
        searchLbl.isHidden = true
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
    
    @IBAction func menuBarPressed(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.sideMenuView.transform = CGAffineTransform(translationX: 350, y: 0)
            self.blurView.isHidden = false
        }
        
    }
    
    @IBAction func dismissBtnPressed(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.sideMenuView.transform = .identity
            self.blurView.isHidden = true
        }
    }
    
    @objc func blurViewTapped() {
        UIView.animate(withDuration: 0.5) {
            self.sideMenuView.transform = .identity
            self.blurView.isHidden = true
        }
    }
    
}

extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.contentView.layer.cornerRadius = 10
        cell.contentView.layer.borderWidth = 1.0

        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = true

        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 10)
        cell.layer.shadowRadius = 5
        cell.layer.shadowOpacity = 0.8
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
        return cell
    }
}

extension MainVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 130, height: 194)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension MainVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == menuBarTableViwe {
            let cell2 = menuBarTableViwe.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! SideMenuCell
            cell2.nameLbl.text = MenuData.titels[indexPath.row]
            cell2.sideImage.image = MenuData.images[indexPath.row]
            return cell2
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! UniverTableCell
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == menuBarTableViwe {
            return 70
        } else {
            return 100
        }
    }
    
    
}
