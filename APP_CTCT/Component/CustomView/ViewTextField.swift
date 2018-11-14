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
    
    let label: UILabel = {
        let view = UILabel.init()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = Colors.colorBlack
        view.font = UIFont.init(name: "Arial", size: 15)
        view.textAlignment = .left
        return view
        
    }()
    
    let view: UIView = {
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
        view.addSubview(textfield)
        label.setTopLeadingViewLabel(top: self.topAnchor, leading: self.leadingAnchor)
        view.fullTopLeftRightBottom_WithConstant5dp(topAnchor: label.bottomAnchor, leadingAnchor: self.leadingAnchor, bottomAnchor: self.bottomAnchor, trailingAnchor: self.trailingAnchor)
        label.text = "Tester"
        textfield.fullTopLeftRightBottomWidthLeading10dp(topAnchor: view.topAnchor, leadingAnchor: view.leadingAnchor, bottomAnchor: view.bottomAnchor, trailingAnchor: view.trailingAnchor)
    }
}
