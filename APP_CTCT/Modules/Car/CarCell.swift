//
//  CarCell.swift
//  APP_CTCT
//
//  Created by vinova on 11/8/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import UIKit

class CarCell: UITableViewCell {

    @IBOutlet weak var horseCar: UILabel!
    @IBOutlet weak var makeCar: UILabel!
    @IBOutlet weak var modelCar: UILabel!
    @IBOutlet weak var imgCar: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.selectionStyle = .none
    }
    
    func setupCell(carModel: CarViewModel){
        modelCar.text = carModel.modelText
        makeCar.text = carModel.makeText
        horseCar.text = carModel.horseText
        imgCar.loadImageFromInternet(link: carModel.imgCar ?? "")
    }
}
