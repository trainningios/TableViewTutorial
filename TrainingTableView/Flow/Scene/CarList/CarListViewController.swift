//
//  CarListViewController.swift
//  TrainingTableView
//
//  Created by mac on 9/5/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class CarListViewController: BaseViewController {
    private var presenter: CarListPresenter?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func configView() {
        super.configView()
        presenter = CarListPresenter()
        presenter?.delegate = self
    }
}
extension CarListViewController: CarListPresenterDelegate {
}
extension CarListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (presenter?.numberOfRowInSection(section: section))!
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let car = presenter?.dataAtIndexPath(indexPath: indexPath)
        var cell  =  tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = car?.getName()
        cell?.detailTextLabel?.text = String(format: "%f", car?.price ?? "")
        return cell!
    }
}

extension CarListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}
