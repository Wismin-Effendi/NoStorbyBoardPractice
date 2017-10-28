//
//  NameCell.swift
//  TableView
//
//  Created by Wismin Effendi on 10/27/17.
//  Copyright © 2017 Wismin Effendi. All rights reserved.
//

import UIKit

class NameCell: UITableViewCell {
    
    var profileImageView = UIImageView()
    var nameLabel = UILabel()

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
    }
    
    func setupViews() {
        
        addSubview(profileImageView)
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.contentMode = .scaleAspectFit
        profileImageView.layer.masksToBounds = true
        profileImageView.layer.cornerRadius = 25.0
        profileImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        profileImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 16).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
    }
    

    required init?(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }
}
