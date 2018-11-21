//
//  ViewChoiceForgotPassword.swift
//  APP_CTCT
//
//  Created by vinova on 11/20/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation
import UIKit


protocol clickDialog:class {
    func confirm(isPhone: Bool)
}
class ViewChoiceForgotPassword {
    
    weak var delegate : clickDialog?
    
    public static let shared = ViewChoiceForgotPassword()
    let controllerView : UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        view.backgroundColor = UIColor(hex: 0xffffff, alpha: 0.3)
        return view
    }()
    let viewContainer : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hex: 0x444444, alpha: 0.7)
        //view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let labelTitle : UILabel = {
        let label = UILabel.init()
        label.text = "Please Choice"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = Colors.colorRed
        label.font = UIFont.boldSystemFont(ofSize: 18)
        //label.font = UIFont.init(name: "Arial", size: 18)
        return label
    }()
    let ratioPhoneNumber : RatioCTCT = {
        let button = RatioCTCT()
        button.isChecked = false
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let ratioEmail : RatioCTCT = {
        let button = RatioCTCT()
        button.isChecked = false
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let lbPhoneNumber : UILabel = {
        let label = UILabel.init()
        label.text = "Phone Number"
        label.textColor = Colors.colorWhite
        label.font = UIFont.italicSystemFont(ofSize: 14)
        //label.font = UIFont(name: "Arial", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let lbEmail : UILabel = {
        let label = UILabel.init()
        label.text = "Email"
        label.font = UIFont.italicSystemFont(ofSize: 14)
        label.textColor = Colors.colorWhite
        label.font = UIFont.italicSystemFont(ofSize: 14)
        //label.font = UIFont(name: "Arial", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let btConfirm : CustomButton = {
        let button = CustomButton()
        button.setTextButton(tempText: Strings.Button.confirm)
        button.isEnableButton = false
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    init() {
        controllerView.addSubview(viewContainer)
        viewContainer.addSubview(labelTitle)
        viewContainer.addSubview(ratioEmail)
        viewContainer.addSubview(ratioPhoneNumber)
        viewContainer.addSubview(lbPhoneNumber)
        viewContainer.addSubview(lbEmail)
        viewContainer.addSubview(btConfirm)
        ratioEmail.addTarget(self, action: #selector(checkedEmail), for: .touchUpInside)
        ratioPhoneNumber.addTarget(self, action: #selector(checkedPhone), for: .touchUpInside)
        controllerView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideView)))
        btConfirm.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(confirm)))
        setAutoLayout()
    }
    
    @objc fileprivate func confirm(){
        guard let result = isPhone() else { return }
        hideViewChoice()
        if (result){
            delegate?.confirm(isPhone: true)
            return
        }
        delegate?.confirm(isPhone: false)
    }
    
    @objc fileprivate func hideView(){
        hideViewChoice()
    }
    
    @objc func checkedEmail(sender: RatioCTCT){
        if (sender.isChecked){
            ratioPhoneNumber.isChecked = false
            btConfirm.isEnableButton = true
            return
        }
         btConfirm.isEnableButton = false
    }
    
    @objc fileprivate func checkedPhone(sender: RatioCTCT){
        if (sender.isChecked){
            ratioEmail.isChecked = false
            btConfirm.isEnableButton = true
            return
        }
        btConfirm.isEnableButton = false
    }
    
    fileprivate func setAutoLayout(){
        viewContainer.frame = CGRect(x: 0, y: 0, width: 300, height: 150)
        viewContainer.center = controllerView.center
        viewContainer.setupBoder(borderColor: nil, borderWidth: 0, borderCorner: 5)
        labelTitle.topAnchor.constraint(equalTo: viewContainer.topAnchor, constant: 5).isActive = true
        labelTitle.centerXAnchor.constraint(equalTo: viewContainer.centerXAnchor).isActive = true
        ratioEmail.topAnchor.constraint(equalTo: labelTitle.bottomAnchor, constant: 10).isActive = true
        ratioEmail.leadingAnchor.constraint(equalTo: viewContainer.leadingAnchor, constant: 10).isActive = true
        ratioEmail.widthAnchor.constraint(equalToConstant: 20).isActive = true
        ratioEmail.heightAnchor.constraint(equalToConstant: 20).isActive = true
        ratioPhoneNumber.leadingAnchor.constraint(equalTo: ratioEmail.leadingAnchor).isActive = true
        ratioPhoneNumber.topAnchor.constraint(equalTo: ratioEmail.bottomAnchor, constant: 10).isActive = true
        ratioPhoneNumber.widthAnchor.constraint(equalToConstant: 20).isActive = true
        ratioPhoneNumber.heightAnchor.constraint(equalToConstant: 20).isActive = true
        lbPhoneNumber.topAnchor.constraint(equalTo: ratioPhoneNumber.topAnchor, constant: 0).isActive = true
        lbPhoneNumber.leadingAnchor.constraint(equalTo: ratioPhoneNumber.trailingAnchor, constant: 10).isActive = true
        lbEmail.topAnchor.constraint(equalTo: ratioEmail.topAnchor, constant: 0).isActive = true
        lbEmail.leadingAnchor.constraint(equalTo: ratioEmail.trailingAnchor, constant: 10).isActive = true
        btConfirm.topAnchor.constraint(equalTo: ratioPhoneNumber.bottomAnchor, constant: 10).isActive = true
        btConfirm.leadingAnchor.constraint(equalTo: viewContainer.leadingAnchor, constant: 10).isActive  = true
        btConfirm.trailingAnchor.constraint(equalTo: viewContainer.trailingAnchor, constant: -10).isActive = true
        btConfirm.bottomAnchor.constraint(equalTo: viewContainer.bottomAnchor, constant: -10).isActive = true
    }
    
    func showViewChoice(){
        if let window = UIApplication.shared.keyWindow{
            window.addSubview(controllerView)
        }
    }
    
    func hideViewChoice(){
        ratioEmail.isChecked = false
        ratioPhoneNumber.isChecked = false
        btConfirm.isEnableButton = false
        controllerView.removeFromSuperview()
    }
    
    func isPhone() -> Bool?{
        if (ratioPhoneNumber.isChecked){
            return true
        }
        if (ratioEmail.isChecked){
            return false
        }
        return nil
    }
}
