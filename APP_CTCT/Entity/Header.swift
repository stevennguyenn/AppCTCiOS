//
//  Header.swift
//  APP_CTCT
//
//  Created by vinova on 11/7/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation
import UIKit

struct Header {
    var title: String
    var point: String
    var image: UIImage
    
    init(title: String, point: String, image: UIImage) {
        self.title = title
        self.point = point
        self.image = image
    }
}
