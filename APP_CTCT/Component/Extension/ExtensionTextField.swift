//
//  ExtensionTextField.swift
//  CTCT
//
//  Created by vinova on 11/6/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation
import UIKit

extension UITextField{
    func setupTextFieldCTCT(){
        self.textColor = Colors.colorBlack
        self.font = UIFont.init(name: "Arial", size: 14)
        self.textAlignment = NSTextAlignment.left
        self.clearButtonMode = .whileEditing
        self.layer.borderColor = Colors.colorSliver.cgColor
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
    }
}
