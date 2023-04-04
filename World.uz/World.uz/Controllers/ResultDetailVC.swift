//
//  ResultDetailVC.swift
//  World.uz
//
//  Created by Abduraxmon on 02/04/23.
//

import UIKit

class ResultDetailVC: UIViewController {
    
    
    @IBOutlet weak var overviewView: UIView!
    @IBOutlet var stackBtns: [UIButton]!
    @IBOutlet weak var collectionView: UICollectionView!
    
    let courseVC = CourseDetailsVC(nibName: "CourseDetailsVC", bundle: nil)
    let faqVC = FAQVC(nibName: "FAQVC", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollectionView()
        
        stackBtns[0].backgroundColor = UIColor(red: 0, green: 0.131, blue: 0.596, alpha: 1)
        stackBtns[0].setTitleColor(.white, for: .normal)
    }
    
    func setUpCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "UniPictureCell", bundle: nil), forCellWithReuseIdentifier: "cell")
    }
    
    
    @IBAction func OverviewPressed(_ sender: UIButton) {
        giveColor(sender)
        
        switch sender.tag {
        case 0:
            overviewView.isHidden = false
        case 1:
            present(courseVC, animated: true)
            overviewView.isHidden = true
        case 6:
            present(faqVC, animated: true)
            overviewView.isHidden = true
        default:
            overviewView.isHidden = false
        }
    }
    
    func giveColor(_ sender: UIButton) {
        
        for btn in stackBtns {
            if btn.tag == sender.tag {
                btn.backgroundColor = UIColor(red: 0, green: 0.131, blue: 0.596, alpha: 1)
                btn.setTitleColor(.white, for: .normal)
            } else {
                btn.backgroundColor = .white
                btn.setTitleColor(.black, for: .normal)
            }
        }
    }
    
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true)
    }
}

extension ResultDetailVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        CGSize(width: 104 , height: 60)
        
    }
    
    
}
