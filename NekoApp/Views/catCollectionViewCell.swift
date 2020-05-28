//
//  catCollectionViewCell.swift
//  NekoApp
//
//  Created by Shunzhe Ma on 5/28/20.
//  Copyright © 2020 Shunzhe Ma. All rights reserved.
//

import Foundation
import UIKit

class catCollectionViewCell: UICollectionViewCell, UITableViewDelegate, UITableViewDataSource {
    
    //Provided by the caller
    var toys: [String] = []
    var catName: String = ""
    
    @IBOutlet weak var tableView: UITableView!
    
    override func awakeFromNib() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = toys[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return catName
    }
    
    
}
