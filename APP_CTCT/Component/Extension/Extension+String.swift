//
//  Extension+String.swift
//  APP_CTCT
//
//  Created by vinova on 11/21/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation
import UIKit

extension String{
    func  converPhoneNumber() -> String{
        var result = "+84"
        let str = String(self[self.index(after: self.startIndex)...])
        result += "\(str)"
        return result
    }
}
