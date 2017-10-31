//
//  HomeViewController.swift
//  YouTube
//
//  Created by Wismin Effendi on 10/30/17.
//  Copyright © 2017 Wismin Effendi. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController {
    
    let menuBar = MenuBar()

    override func viewDidLoad() {
        super.viewDidLoad()

        let headingLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
        headingLabel.text = "YouTube"
        headingLabel.textColor = .white
        headingLabel.font = UIFont.systemFont(ofSize: 20)
        navigationItem.titleView = headingLabel
        collectionView?.register(HomeViewControllerCell.self, forCellWithReuseIdentifier: "cell")
        collectionView?.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        collectionView?.contentInset = UIEdgeInsetsMake(50, 0, 0, 0)
        collectionView?.scrollIndicatorInsets = UIEdgeInsetsMake(50, 0, 0, 0)
        customMenuBar()
    }
    
    func customMenuBar() {
        
        view.addSubview(menuBar)
        menuBar.translatesAutoresizingMaskIntoConstraints = false
        menuBar.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        menuBar.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        menuBar.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        menuBar.heightAnchor.constraint(equalToConstant: 50).isActive = true 
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 5
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeViewControllerCell
        
        return cell
    }
}


extension HomeViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: view.frame.width, height: 230)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
    }
}
