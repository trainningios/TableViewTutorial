//
//  CarTableViewController.swift
//  uiTableView
//
//  Created by Trần Ngọc Tân on 9/6/19.
//  Copyright © 2019 Trần Ngọc Tân. All rights reserved.
//

import UIKit
struct Headline {
    
    var id : Int
    var title : String
    var text : String
    var image : String
    var color: UIColor!
    
    
}

var headlines = [
    Headline(id: 1, title: "Mazda 3", text: "Price: 8500000000", image: "mazdared", color: UIColor.red),
    Headline(id: 2, title: "Mazda 3", text: "Price: 8000000000", image: "mazdablue", color: UIColor.blue),
    Headline(id: 3, title: "Mazda 3", text: "Price: 9000000000", image: "mazdablack", color: UIColor.black),
    
]

    class CarTableViewController: UITableViewController {

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headlines.count
    }
        
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Mazda Version 2"
        }
        else{
            return "Mazda Version 1.5"
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        let headline = headlines[indexPath.row]
        cell.textLabel?.text = headline.title
        cell.textLabel?.textColor = UIColor.white
        cell.detailTextLabel?.text = headline.text
        cell.detailTextLabel?.textColor = UIColor.white
        cell.backgroundColor = headline.color
        cell.imageView?.image = UIImage(named: headline.image)

        
        return cell
    }
    
}
