//
//  CellLineSetting.swift
//  APP_CTCT
//
//  Created by vinova on 11/21/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import UIKit

class CellLineSetting: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }
    
    func setupCell(title: String){
        lblTitle.text = title
    }
}
