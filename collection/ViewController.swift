//
//  ViewController.swift
//  collection
//
//  Created by Ali  on 10/11/2021.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    let burgers = ["Big mac","Hamburger","Zinger", "Mighty Zinger","Double Cheese" ]
    let burgerImage: [UIImage] = [
        UIImage(named: "bigmac")!,
        UIImage(named: "ham")!,
        UIImage(named: "zinger")!,
        UIImage(named: "mighty")!,
        UIImage(named: "double")!
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsets(top: 0,left: 5,bottom: 0,right: 5)
        layout.minimumInteritemSpacing = 5
        layout.itemSize = CGSize(width: (self.collectionView.frame.size.width - 20)/5, height: (self.collectionView.frame.size.height)/3)
     
       
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return burgers.count
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! collectionViewCell
        cell.lblView.text = burgers[indexPath.item]
        cell.burgerImage.image = burgerImage[indexPath.item]
        cell.layer.borderColor = UIColor.blue.cgColor
        cell.layer.borderWidth = 1
    
        return cell
    }
  
  
    
}
