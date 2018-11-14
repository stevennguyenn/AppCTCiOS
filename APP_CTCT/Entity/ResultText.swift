//
//  ResultText.swift
//  APP_CTCT
//
//  Created by vinova on 11/14/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation

struct ResultText{
    var id : Int
    var result: String
    
    init(id: Int,result: String) {
        self.id = id
        self.result = result
    }
    
    mutating func changeResult(result: ResultText){
        self.id = result.id
        self.result = result.result
    }
    
    init() {
        self.id = 0
        self.result = ""
    }
}
