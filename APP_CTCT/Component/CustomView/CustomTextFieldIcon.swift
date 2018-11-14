//
//  CustomTextView.swift
//  CTCT
//
//  Created by vinova on 11/6/18.
//  Copyright © 2018 vinova. All rights reserved.
//
import UIKit

class CustomTextFieldIcon: UIView{
    var textField : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.textColor = Colors.colorBlack
        tf.font = UIFont.init(name: "Arial", size: 14)
        tf.textAlignment = NSTextAlignment.left
        tf.clearButtonMode = .whileEditing
        return tf
    }()
    
    var icon : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    func setupView(){
        self.addSubview(icon)
        self.addSubview(textField)
        icon.setLeftCenterYSize(leadingAnchor: self.leadingAnchor, constantLeading: 0, centerY: self.centerYAnchor, size: CGSize(width: 30, height: 30))
        textField.fullTopLeftRightBottom_WithConstantLeft(topAnchor: self.topAnchor, leadingAnchor: icon.trailingAnchor, constantLeading: 10, bottomAnchor: self.bottomAnchor, trailingAnchor: self.trailingAnchor)
        self.backgroundColor = Colors.colorWhite
        self.setupBoder(borderColor: Colors.colorSliver, borderWidth: 1, borderCorner: 5)
    }
    
    func setupTextField(image: UIImage,hint: String){
        icon.image = image
        textField.placeholder = hint
    }
    
    func setViewPassword(){
        textField.isSecureTextEntry = true
    }
}
