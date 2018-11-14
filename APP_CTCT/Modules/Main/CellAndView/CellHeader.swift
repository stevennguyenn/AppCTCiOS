//
//  CellHeader.swift
//  APP_CTCT
//
//  Created by vinova on 11/7/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import UIKit

class CellHeader: UITableViewCell {

    @IBOutlet weak var lbPoint: UILabel!
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var imgCell: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupView()
    }
    
    func setupView(){
        imgCell.layer.cornerRadius = imgCell.frame.height/2
        imgCell.clipsToBounds = true
        imgCell.layer.borderColor = Colors.colorWhite.cgColor
        imgCell.layer.borderWidth = 1
        self.selectionStyle = .none
    }
    
    func setupCell(header: Header){
        self.imgCell.image = header.image
        self.lbTitle.text = header.title
        self.lbPoint.text = header.point
        
    }
}
