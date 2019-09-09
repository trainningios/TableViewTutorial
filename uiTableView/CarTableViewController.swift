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
class CarTableViewController: UITableViewController {
        var headlines = [
            [
                Headline(id: 1, title: "Mazda 3 2.0", text: "Price: 9800000000", image: "mazdared", color: UIColor.red),
                Headline(id: 2, title: "Mazda 3 2.0", text: "Price: 9600000000", image: "mazdablue", color: UIColor.blue),
                Headline(id: 3, title: "Mazda 3 2.0", text: "Price: 9000000000", image: "mazdablack", color: UIColor.black)
            ],
            [
                Headline(id: 4, title: "Mazda 3 1.5", text: "Price: 8000000000", image: "mazdared", color: UIColor.red),
                Headline(id: 5, title: "Mazda 3 1.5", text: "Price: 8500000000", image: "mazdablue", color: UIColor.blue),
                Headline(id: 6, title: "Mazda 3 1.5", text: "Price: 8700000000", image: "mazdablack", color: UIColor.black)
            ]
            
        ]
    
        

    override func numberOfSections(in tableView: UITableView) -> Int {
        return headlines.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headlines[section].count
    }
        
    let headerTitles = ["Mazda Version 2", "Mazda Version 1.5"]
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section < headerTitles.count {
            return headerTitles[section]
        }
        
        return nil
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        let headline = headlines[indexPath.section][indexPath.row]
        cell.textLabel?.text = headline.title
        cell.textLabel?.textColor = UIColor.white
        cell.detailTextLabel?.text = headline.text
        cell.detailTextLabel?.textColor = UIColor.white
        cell.backgroundColor = headline.color
        cell.imageView?.image = UIImage(named: headline.image)

        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CarDetailViewController") as! CarDetailViewController
        viewController.details = self.headlines[indexPath.section][indexPath.row]
       self.navigationController?.pushViewController(viewController, animated: true)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            
        }
    }
    

