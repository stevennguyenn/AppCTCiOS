//
//  RatioCTCT.swift
//  APP_CTCT
//
//  Created by vinova on 11/8/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import UIKit

public protocol clickRatio : class{
    func clickChoiceRatio()
}

class RatioCTCT: UIButton{
    
    weak var delegate : clickRatio?
    let checkedImage = #imageLiteral(resourceName: "checkbox_on")
    let uncheckedImage = #imageLiteral(resourceName: "checkbox_off") //have not checked image
    
    
    var isChecked: Bool = false {
        didSet {
            if isChecked {
                self.setBackgroundImage(checkedImage, for: .normal)
            }
            else {
                self.setBackgroundImage(uncheckedImage, for: .normal)
            }
        }
    }
    
    
    override func awakeFromNib() {
        self.isChecked = false
        self.addTarget(self, action: #selector(clicked), for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.isChecked = false
        self.addTarget(self, action: #selector(clicked), for: .touchUpInside)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.isChecked = false
        self.addTarget(self, action: #selector(clicked), for: .touchUpInside)
    }
    
    @objc func clicked(){
        isChecked = !isChecked
        delegate?.clickChoiceRatio()
    }
}

