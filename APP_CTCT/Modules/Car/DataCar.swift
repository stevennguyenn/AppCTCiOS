//
//  DataCar.swift
//  APP_CTCT
//
//  Created by vinova on 11/8/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation

struct DataCar{
    static let cars: [CarViewModel] = {
        let ferrai = Car(model: "F12", make: "Ferari", kilowatts: 730, photoURL: "http://auto.ferrari.com/en_EN/wp-content/uploads/sites/5/2013/07/Ferrari-F12berlinetta.jpg")
        let zondaF = Car(model: "Zonda F", make: "Pagabu", kilowatts: 602, photoURL: "http://storage.pagani.com/view/1024/BIG_zg-4-def.jpghttp://storage.pagani.com/view/1024/BIG_zg-4-def.jpg")
        let lamboAventador = Car(model: "Aventador", make: "Lamborghini", kilowatts: 700, photoURL: "http://cdn.lamborghini.com/content/models/aventador_lp700-4_roadster/gallery_2013/roadster_21.jpg")
        return [CarViewModel(car: ferrai),CarViewModel(car: zondaF),CarViewModel(car: lamboAventador)]
    }()
}
