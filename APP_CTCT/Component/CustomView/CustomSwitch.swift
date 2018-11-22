//
//  CustomSwitch.swift
//  APP_CTCT
//
//  Created by vinova on 11/22/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation
import UIKit

protocol changeSwitch:class {
    func change(isOn: Bool)
}

class CustomSwitch : UIView {
    
    weak var delegate: changeSwitch?
    
    var label : UILabel = {
        let label = UILabel()
        label.text = "Text"
        label.textAlignment = .left
        label.font = UIFont.init(name: "Arial", size: 15)
        label.textColor = Colors.colorBlack
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var vSwitch : UISwitch = {
        let vSwitch  = UISwitch()
        vSwitch.translatesAutoresizingMaskIntoConstraints = false
        return vSwitch
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    fileprivate func setupView(){
        self.addSubview(label)
        self.addSubview(vSwitch)
        vSwitch.addTarget(self, action: #selector(changeSwitch), for: .valueChanged)
        setAutoLayout()
    }
    
    @objc func changeSwitch(mySwitch: UISwitch){
        delegate?.change(isOn: mySwitch.isOn)
    }
    
    fileprivate func setAutoLayout(){
        label.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8).isActive = true
        vSwitch.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        vSwitch.heightAnchor.constraint(equalToConstant: 30).isActive = true
        vSwitch.widthAnchor.constraint(equalToConstant: 50).isActive = true
        vSwitch.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
    func setTitle(text: String){
        label.text = text
    }
    
}
