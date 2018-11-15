//
//  ViewTextField.swift
//  APP_CTCT
//
//  Created by vinova on 11/14/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation
import UIKit



class ViewTextField: UIView{
    
    var label: UILabel = {
        let view = UILabel.init()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = Colors.colorBlack
        view.font = UIFont.init(name: "Arial", size: 15)
        view.textAlignment = .left
        return view
        
    }()
    var labelError : UILabel = {
        let view = UILabel()
        view.isHidden = true
        view.text = "Error"
        view.textColor = UIColor.red
        view.font = UIFont.init(name: "Arial", size: 13)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textAlignment = .right
        return view
    }()
    var view: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.clipsToBounds = true
        view.layer.borderColor = Colors.colorSliver.cgColor
        view.layer.borderWidth = 1
        return view
    }()
    
    let textfield : UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clearButtonMode = .whileEditing
        view.textColor = Colors.colorBlack
        view.font = UIFont.init(name: "Arial", size: 15)
        view.textAlignment = .left
        return view
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
        self.addSubview(label)
        self.addSubview(view)
        textfield.addSubview(labelError)
        view.addSubview(textfield)
        label.setTopLeadingViewLabel(top: self.topAnchor, leading: self.leadingAnchor)
        view.fullTopLeftRightBottom_WithConstant5dp(topAnchor: label.bottomAnchor, leadingAnchor: self.leadingAnchor, bottomAnchor: self.bottomAnchor, trailingAnchor: self.trailingAnchor)
        label.text = "Tester"
        textfield.fullTopLeftRightBottomWidthLeading10dp(topAnchor: view.topAnchor, leadingAnchor: view.leadingAnchor, bottomAnchor: view.bottomAnchor, trailingAnchor: view.trailingAnchor)
        labelError.centerYAnchor.constraint(equalTo: textfield.centerYAnchor).isActive = true
        labelError.trailingAnchor.constraint(equalTo: textfield.trailingAnchor, constant: -8).isActive = true
        textfield.addTarget(self, action: #selector(beginChange), for: .editingDidBegin)
    }
    
    func setDataView(textLabel: String, placeText: String){
        label.text = textLabel
        textfield.placeholder = placeText
    }
    
    func getTextTextField() -> String?{
        if let text = textfield.text{
            return text
        }
        return nil
    }
    
    func setErrorView(error: String){
        labelError.text = error
        labelError.isHidden = false
        view.layer.borderColor = UIColor.red.cgColor
    }
    
    func setViewBegin(){
        labelError.isHidden = true
        view.layer.borderColor = UIColor.black.cgColor
    }
    
    @objc func beginChange(){
        setViewBegin()
    }
}
