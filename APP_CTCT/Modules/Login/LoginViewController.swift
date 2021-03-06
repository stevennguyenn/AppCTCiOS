//
//  LoginViewController.swift
//  CTCT
//
//  Created vinova on 11/6/18.
//  Copyright © 2018 vinova. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit

class LoginViewController: UIViewController, LoginViewProtocol {

	var presenter: LoginPresenterProtocol?

    @IBOutlet weak var btRegister: UIButton!
    @IBOutlet weak var btLoginFacabook: FBSDKLoginButton!
    @IBOutlet weak var btLogin: CustomButton!
    @IBOutlet weak var tfPassword: CustomTextField!
    @IBOutlet weak var tfEmail: CustomTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    func fbLoginInitiate(){
        let loginManager = FBSDKLoginManager()
        loginManager.logIn(withReadPermissions: ["public_profile","email"], from: self) { (result, error) in
            guard let _ = error else{
                if let loginResult = result{
                    print(loginResult)
                }
                return
            }
        }
    }
    
    func setbtLoginFacebook(){
        let layoutConstraint = btLoginFacabook.constraints
        for lc in layoutConstraint{
            if lc.constant == 28{
                lc.isActive = false
                break
            }
        }
    }
    
    func setupView(){
        setbtLoginFacebook()
        tfEmail.setupTextField(image: #imageLiteral(resourceName: "user"), hint: Strings.TextField.email)
        tfPassword.setupTextField(image: #imageLiteral(resourceName: "password"), hint: Strings.TextField.password)
        tfPassword.setViewPassword()
        btLogin.setTextButton(tempText: Strings.Button.login)
        navigationController?.navigationBar.isHidden = true
        let gestureLogin = UITapGestureRecognizer(target: self, action: #selector(login))
        btLogin.addGestureRecognizer(gestureLogin)
        let gestureLoginFacebook = UITapGestureRecognizer(target: self, action: #selector(loginFacebook))
        btLoginFacabook.addGestureRecognizer(gestureLoginFacebook)
        btRegister.addTarget(self, action: #selector(register), for: .touchUpInside)
    }
    
    @objc func register(){
        print("register")
        presenter?.register()
    }
    
    @objc func loginFacebook(){
        fbLoginInitiate()
    }
    
    @objc func login(){
        print("login")
    }
}
