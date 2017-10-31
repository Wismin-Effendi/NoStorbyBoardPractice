//
//  HomeViewControllerCell.swift
//  YouTube
//
//  Created by Wismin Effendi on 10/30/17.
//  Copyright © 2017 Wismin Effendi. All rights reserved.
//

import UIKit

class HomeViewControllerCell: UICollectionViewCell {
    
    let thumbnailImageView = UIImageView()
    let profileImageView = UIImageView()
    let titleTextView = UITextView()
    let subTitleTextView = UITextView()
    let separatorView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    func setupViews() {

        addSubview(thumbnailImageView)
        thumbnailImageView.translatesAutoresizingMaskIntoConstraints = false
        thumbnailImageView.image = #imageLiteral(resourceName: "mikasa")
        thumbnailImageView.contentMode = .scaleAspectFit
        thumbnailImageView.clipsToBounds = true
        thumbnailImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        thumbnailImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16).isActive = true
        thumbnailImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16).isActive = true
        thumbnailImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true

        addSubview(profileImageView)
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.image = #imageLiteral(resourceName: "mikasa")
        profileImageView.layer.masksToBounds = true
        profileImageView.layer.cornerRadius = 22
        profileImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        profileImageView.topAnchor.constraint(equalTo: thumbnailImageView.bottomAnchor, constant: 8).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 44).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 44).isActive = true 

        addSubview(titleTextView)
        titleTextView.translatesAutoresizingMaskIntoConstraints = false
        titleTextView.text = "Mikasa Ackermann"
        titleTextView.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 8).isActive = true
        titleTextView.topAnchor.constraint(equalTo: thumbnailImageView.bottomAnchor, constant: 8).isActive = true
        titleTextView.rightAnchor.constraint(equalTo: thumbnailImageView.rightAnchor).isActive = true
        titleTextView.heightAnchor.constraint(equalToConstant: 22).isActive = true

        addSubview(subTitleTextView)
        subTitleTextView.translatesAutoresizingMaskIntoConstraints = false
        subTitleTextView.text = "700.000.000 - 1 year ago"
        subTitleTextView.textColor = .lightGray
        subTitleTextView.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 8).isActive = true
        subTitleTextView.topAnchor.constraint(equalTo: titleTextView.bottomAnchor, constant: 0).isActive = true
        subTitleTextView.rightAnchor.constraint(equalTo: thumbnailImageView.rightAnchor).isActive = true
        subTitleTextView.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        addSubview(separatorView)
        separatorView.translatesAutoresizingMaskIntoConstraints = false
        separatorView.backgroundColor = .lightGray
        separatorView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        separatorView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        separatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        separatorView.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 8).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
}
