//
//  ExtensionWebView.swift
//  APP_CTCT
//
//  Created by vinova on 11/8/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation
import WebKit

extension WKWebView{
    //read file pdf
    func readPDF(link: String
        ){
        guard let url = URL(string: link) else {
            return
        }
        self.load(URLRequest(url: url))
    }
}
