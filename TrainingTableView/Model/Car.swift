//
//  Car.swift
//  TrainingTableView
//
//  Created by mac on 9/6/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation
import UIKit
class Car {
    private var name = "Mazda 3"
    var ver: CarVersion = .v15
    var color: CarColor = .black
    var price: Float {
        get {
            switch (ver, color) {
            case (.v15, .black):
                return 800.0
            case (.v15, .white):
                return 850.0
            case (.v15, .red):
                return 900.0
            case (.v20, .black):
                return 900.0
            case (.v20, .white):
                return 950.0
            case (.v20, .red):
                return 1000.0
            default:
                return 0.0
            }
        }
    }
    init(ver: CarVersion, color: CarColor) {
        self.ver = ver
        self.color = color
    }
    func getName() -> String {
        return "\(self.name) \(self.ver.rawValue)"
    }
}

enum CarVersion: String {
    case v15 = "Version 1.5", v20 = "Version 2.0"
}
enum CarColor: String {
    case black = "#000000"
    case white = "#FFFFFF"
    case red   = "#FF0000"
}
