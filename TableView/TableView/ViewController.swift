//
//  ViewController.swift
//  TableView
//
//  Created by Wismin Effendi on 10/27/17.
//  Copyright © 2017 Wismin Effendi. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let names = ["John","Tim","Jim","Rodney","Wally"]
    let images = ["balloon_1","balloon_2","balloon_3","balloon_4","balloon_5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(NameCell.self, forCellReuseIdentifier: "cell")
    }

    
    // MARK: Tableview delegate
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NameCell
        
        cell.nameLabel.text = names[indexPath.row]
        cell.profileImageView.image = UIImage(named: images[indexPath.row])
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}

