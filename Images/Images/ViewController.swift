//
//  ViewController.swift
//  Images
//
//  Created by Wismin Effendi on 10/27/17.
//  Copyright © 2017 Wismin Effendi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let profileImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .white
        
        view.addSubview(profileImageView)
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.image = #imageLiteral(resourceName: "Apple-Tim-Cook")
        profileImageView.contentMode = .scaleAspectFit
        profileImageView.layer.masksToBounds = true
        profileImageView.layer.cornerRadius = 100
        
        profileImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

