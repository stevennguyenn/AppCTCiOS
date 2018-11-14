//
//  RegisterViewController.swift
//  CTCT
//
//  Created vinova on 11/6/18.
//  Copyright © 2018 vinova. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class RegisterViewController: UIViewController, RegisterViewProtocol {

	var presenter: RegisterPresenterProtocol?

    @IBOutlet weak var btRegister: CustomButton!
    @IBOutlet weak var tfConfirmPassword: CustomTextField!
    @IBOutlet weak var tfPassword: CustomTextField!
    @IBOutlet weak var tfUserName: CustomTextField!
    @IBOutlet weak var btCollectionImage: UIImageView!
    @IBOutlet weak var btCamera: UIImageView!
    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var tfFullName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupNavi()
        CameraHandler.shared.delegate = self
    }

    func setupView(){
        btCamera.isUserInteractionEnabled = true
        btCollectionImage.isUserInteractionEnabled = true
        btRegister.setTextButton(tempText: Strings.Button.register)
        tfFullName.setupTextFieldCTCT()
        tfFullName.placeholder = Strings.TextField.fullname
        tfUserName.setupTextField(image: #imageLiteral(resourceName: "user"), hint: Strings.TextField.email)
        tfPassword.setupTextField(image: #imageLiteral(resourceName: "password"), hint: Strings.TextField.password)
        tfConfirmPassword.setupTextField(image: #imageLiteral(resourceName: "password"), hint: Strings.TextField.confirmPassword)
        tfPassword.setViewPassword()
        tfConfirmPassword.setViewPassword()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(register))
        btRegister.addGestureRecognizer(gesture)
        btCamera.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(camera)))
        btCollectionImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(collection)))
    }
    
    @objc func collection(){
        CameraHandler.shared.library(vc: self)
    }
    
    @objc func camera(){
        CameraHandler.shared.camera(vc: self)
    }
    
    @objc func register(){
        
    }
    
    func setupNavi(){
        navigationController?.navigationBar.isHidden = false
        self.navigationItem.title = Strings.Navigation.register
    }
}

extension RegisterViewController: handleImage{
    func handle(image: UIImage) {
        imgAvatar.image = image
    }
}