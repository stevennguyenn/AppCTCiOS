//
//  CustomButton.swift
//  CTCT
//
//  Created by vinova on 11/6/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation
import UIKit

protocol ProcessButton: class {
    func process()
}

class CustomButton: UIView{
    
    weak var delegate : ProcessButton?
    
    var text: UILabel = {
        let text = UILabel()
        text.textColor = Colors.colorWhite
        text.font = UIFont(name: "Arial", size: 16)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    func setupView(){
        self.addSubview(text)
        text.centerView(centerX: self.centerXAnchor, centerY: self.centerYAnchor)
        self.setColorBackground(color: Colors.colorAccent, alpha: 1)
        self.setupBoder(borderColor: nil, borderWidth: 0, borderCorner: 5)
        let gesture = UITapGestureRecognizer(target: self, action: #selector(click))
        self.addGestureRecognizer(gesture)
    }
    
    func setTextButton(tempText:String){
        text.text = tempText
    }
    
    @objc func click(){
        delegate?.process()
    }
}
