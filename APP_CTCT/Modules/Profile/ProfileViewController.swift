//
//  ProfileViewController.swift
//  APP_CTCT
//
//  Created vinova on 11/7/18.
//  Copyright © 2018 vinova. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class ProfileViewController: BaseViewController, ProfileViewProtocol {

    @IBOutlet weak var btnSetLisence: UILabel!
    @IBOutlet weak var imgAVT: UIImageView!
    @IBOutlet weak var btnCollection: UIButton!
    @IBOutlet weak var btnCamera: UIButton!
    @IBOutlet weak var btnChanggPassword: UIButton!
    @IBOutlet weak var tfPhoneNumber: CustomTextFieldIcon!
    @IBOutlet weak var btnOk: CustomButton!
    var presenter: ProfilePresenterProtocol?

	override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func setupNavigation() {
        super.setupNavigation()
        self.setTitle(title: Strings.Navigation.profile)
    }

    func setupView(){
        btnOk.setTextButton(tempText: Strings.Button.confirm)
        btnChanggPassword.addTarget(self, action: #selector(changePassword), for: .touchUpInside)
        tfPhoneNumber.setupTextField(image: #imageLiteral(resourceName: "phonenumber"), hint: Strings.TextField.phoneNumber)
        btnCamera.addTarget(self, action: #selector(camera), for: .touchUpInside)
        btnCollection.addTarget(self, action: #selector(collection), for: .touchUpInside)
        CameraHandler.shared.delegate = self
        btnOk.isEnableButton = false
        btnSetLisence.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(setLisence)))
        btnSetLisence.isUserInteractionEnabled = true
    }
    
    @objc func setLisence(){
        presenter?.gotoMemberCTCT()
    }
    
    @objc func collection(){
        CameraHandler.shared.library(vc: self)
    }
    
    @objc func camera(){
        CameraHandler.shared.camera(vc: self)
    }
    
    @objc func changePassword(){
        presenter?.gotoChangePassword()
    }
}
extension ProfileViewController: handleImage{
    func handle(image: UIImage) {
        imgAVT.image = image
        btnOk.isEnableButton = true
    }
}
