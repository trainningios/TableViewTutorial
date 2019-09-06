//
//  CarListPresenter.swift
//  TrainingTableView
//
//  Created by mac on 9/5/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation
protocol CarListPresenterDelegate: AnyObject {
}
protocol PresenterTableViewDataSouce: AnyObject {
    func numberOfSection() -> Int
    func numberOfRowInSection(section: Int) -> Int
}
protocol PresenterCarTableViewDataSouce: PresenterTableViewDataSouce {
    func dataAtIndexPath(indexPath: IndexPath) -> Car?
}
class CarListPresenter {
    weak var delegate: CarListPresenterDelegate?
    private var listCar = NSMutableArray()
    init() {
        generateData()
    }
    private func generateData() {
        listCar.add(Car(ver: .v15, color: .black))
        listCar.add(Car(ver: .v15, color: .white))
        listCar.add(Car(ver: .v15, color: .red))
        listCar.add(Car(ver: .v20, color: .black))
        listCar.add(Car(ver: .v20, color: .white))
        listCar.add(Car(ver: .v20, color: .red))
    }
}

extension CarListPresenter: PresenterCarTableViewDataSouce {
    func numberOfSection() -> Int {
        return 1
    }
    func numberOfRowInSection(section: Int) -> Int {
        return listCar.count
    }
    func dataAtIndexPath(indexPath: IndexPath) -> Car? {
        return listCar.object(at: indexPath.row) as? Car ?? nil
    }
}
