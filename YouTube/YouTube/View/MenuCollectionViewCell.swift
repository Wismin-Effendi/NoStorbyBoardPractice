//
//  MenuCollectionViewCell.swift
//  YouTube
//
//  Created by Wismin Effendi on 10/31/17.
//  Copyright © 2017 Wismin Effendi. All rights reserved.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    
    let thumbImage = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.CustomColor.youTubeRed
        addSubview(thumbImage)
        thumbImage.translatesAutoresizingMaskIntoConstraints = false
        thumbImage.widthAnchor.constraint(equalToConstant: 28).isActive = true
        thumbImage.heightAnchor.constraint(equalToConstant: 28).isActive = true
        thumbImage.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        thumbImage.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
