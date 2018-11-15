//
//  ProcessRadio.swift
//  APP_CTCT
//
//  Created by vinova on 11/14/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation
protocol ProcessRadio: class {
    func processA(index: Int,id: Int,isChoice: Bool)
    func processB(index: Int,id: Int,isChoice: Bool)
    func processC(index: Int,id: Int,isChoice: Bool)
    func processD(index: Int,id: Int,isChoice: Bool)
}
