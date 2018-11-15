//
//  ChangeSuccessedViewController.swift
//  APP_CTCT
//
//  Created by vinova on 11/15/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import UIKit

protocol ProcessBackRootViewController  : class{
    func backRoot()
}

class ChangeSuccessedViewController: UIViewController {

    weak var delegate: ProcessBackRootViewController?
    @IBOutlet weak var btnGotoLogin: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView(){
        btnGotoLogin.setTextButton(tempText: "Go to Login")
        btnGotoLogin.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goto)))
    }
    
    @objc func goto(){
        delegate?.backRoot()
        self.dismiss(animated: true, completion: nil)
    }
}
