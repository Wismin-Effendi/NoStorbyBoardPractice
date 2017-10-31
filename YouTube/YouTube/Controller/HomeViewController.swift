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
    
    var videos: [Video] = {
        let channel = Channel()
        channel.name = "ChainsmokersVEVO"
        channel.profileImageName = "chainsmookers"
        
        let paris = Video()
        paris.thumbnailImageName = "chainsmookers"
        paris.title = "The Chainsmokers - Paris"
        paris.views = "100,000,000"
        paris.date = "2 months ago"
        paris.channel = channel

        let closer = Video()
        closer.thumbnailImageName = "chainsmookers"
        closer.title = "The Chainsmokers - Closer"
        closer.views = "500,000,000"
        closer.date = "1 months ago"
        closer.channel = channel
        
        return [paris, closer]
    }()

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
        customButtons()
    }
    
    func customMenuBar() {
        
        view.addSubview(menuBar)
        menuBar.translatesAutoresizingMaskIntoConstraints = false
        menuBar.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        menuBar.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        menuBar.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        menuBar.heightAnchor.constraint(equalToConstant: 50).isActive = true 
    }
    
    func customButtons() {
        
        let search = UIImage(named: "search")?.withRenderingMode(.alwaysTemplate)
        let searchButton = UIBarButtonItem(image: search, style: .plain, target: self, action: #selector(handleSearch))
        searchButton.tintColor = .white
        
        let more = UIImage(named: "more")?.withRenderingMode(.alwaysTemplate)
        let moreButton = UIBarButtonItem(image: more, style: .plain, target: self, action: #selector(handleMore))
        moreButton.tintColor = .white
        navigationItem.rightBarButtonItems = [moreButton, searchButton]
    }
    
    @objc func handleSearch() {
        print(123)
    }
    
    @objc func handleMore() {
        print(456)
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return videos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeViewControllerCell
        
        cell.video = videos[indexPath.item]
        
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
