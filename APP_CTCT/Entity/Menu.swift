//
//  Menu.swift
//  APP_CTCT
//
//  Created by vinova on 11/7/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation
import UIKit

struct Menu{
    
    var name: String
    var image: UIImage
    
    init(name:String,image: UIImage) {
        self.image = image
        self.name = name
    }
}
