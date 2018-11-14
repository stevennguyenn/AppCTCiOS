//
//  CellMain.swift
//  APP_CTCT
//
//  Created by vinova on 11/7/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import UIKit

class CellMain: UITableViewCell {

    @IBOutlet weak var lbCell: UILabel!
    @IBOutlet weak var imgCell: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }
    
    func setupCell(menu: Menu){
        imgCell.image = menu.image
        lbCell.text = menu.name
    }
}
