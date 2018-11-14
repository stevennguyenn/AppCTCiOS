//
//  ExtensionImageView.swift
//  APP_CTCT
//
//  Created by vinova on 11/8/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

extension UIImageView{
    func loadImageFromInternet(link: String){
        guard let url = URL(string: link) else {
            return
        }
        SDWebImageDownloader.init().downloadImage(with: url, options: .highPriority, progress: nil) { (image, data, error, finish) in
            if finish {
                guard let image = image else{
                    return
                }
                self.image = image
            }
        }
    }
}
