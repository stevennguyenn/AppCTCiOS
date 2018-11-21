//
//  Alter.swift
//  APP_CTCT
//
//  Created by vinova on 11/21/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation
import UIKit

class AlterController {
    static func showAlter(vc: UIViewController, message: String){
        let alter = UIAlertController(title: Strings.AlterController.notification , message: message, preferredStyle: .alert)
        alter.addAction(UIAlertAction(title: Strings.AlterController.cancel, style: .cancel, handler: nil))
        vc.present(alter,animated: true)
    }
}
