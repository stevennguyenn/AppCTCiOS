//
//  CarViewModel.swift
//  APP_CTCT
//
//  Created by vinova on 11/8/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation
class CarViewModel{
    private var car: Car
    static let horse = 1.34102209
    
    init(car: Car) {
        self.car = car
    }
    
    var modelText: String?{
        guard let model = car.model else {
            return nil
        }
        return model
    }
    
    var makeText: String?{
        guard let make = car.make else {
            return nil
        }
        return make
    }
    
    var horseText: String?{
        guard let kilowatts = car.kilowatts else{
            return nil
        }
        let horsePower = Int(round(Double(kilowatts)) * CarViewModel.horse)
        return "\(horsePower) HP"
    }
    
    var imgCar: String?{
        guard let img = car.photoURL else{
            return nil
        }
        return img
    }
    
}
