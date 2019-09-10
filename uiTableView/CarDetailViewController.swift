//
//  CarDetailViewController.swift
//  uiTableView
//
//  Created by Trần Ngọc Tân on 9/9/19.
//  Copyright © 2019 Trần Ngọc Tân. All rights reserved.
//

import UIKit

class CarDetailViewController: UIViewController {

    @IBOutlet weak var lblDetails: UILabel!
    
    @IBOutlet weak var lblcolor: UILabel!
    var details: Headline?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDetails.text = "\((details?.title)!) with \((details?.text)!)  "
        lblcolor.backgroundColor = details?.color
        

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
