//
//  MenuBar.swift
//  YouTube
//
//  Created by Wismin Effendi on 10/31/17.
//  Copyright © 2017 Wismin Effendi. All rights reserved.
//

import UIKit

class MenuBar: UIView {

    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    let images = ["home", "trending", "subscriptions", "library"]

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        collectionView.backgroundColor = UIColor.CustomColor.youTubeRed
        collectionView.delegate = self
        collectionView.dataSource = self
        addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false 
        collectionView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        collectionView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        collectionView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        collectionView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        collectionView.register(MenuCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension MenuBar: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MenuCollectionViewCell
        
        cell.thumbImage.image = UIImage(named: images[indexPath.row])?.withRenderingMode(.alwaysTemplate)
        cell.tintColor = UIColor.CustomColor.iconGray
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: frame.width / 4, height: frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
    }
}
