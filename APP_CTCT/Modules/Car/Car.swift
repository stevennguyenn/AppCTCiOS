//
//  Car.swift
//  APP_CTCT
//
//  Created by vinova on 11/8/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation
struct Car{
    var model: String?
    var make: String?
    var kilowatts: Int?
    var photoURL: String?
    
    init(model: String,make: String,kilowatts: Int,photoURL: String) {
        self.model = model
        self.make = make
        self.kilowatts = kilowatts
        self.photoURL = photoURL
    }
}
