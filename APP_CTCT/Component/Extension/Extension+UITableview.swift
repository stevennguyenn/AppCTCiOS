//
//  Extension+UITableview.swift
//  APP_CTCT
//
//  Created by vinova on 11/21/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation
import UIKit
extension UITableView{
    
    func registerXibFile<T: UITableViewCell>(_ type: T.Type){
        self.register(UINib.init(nibName: String(describing: T.self), bundle: nil), forCellReuseIdentifier: String(describing: T.self))
    }
    
    func dequeue<T: UITableViewCell>(_ type: T.Type, indexPath: IndexPath)-> T{
        guard let cell = self.dequeueReusableCell(withIdentifier: String(describing: T.self), for: indexPath) as? T else {
            fatalError("no conver \(T.self)")
        }
        return cell
    }
    
}
