//
//  ChangeFailedViewController.swift
//  APP_CTCT
//
//  Created by vinova on 11/15/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import UIKit

class ChangeFailedViewController: UIViewController {

    @IBOutlet weak var btnCancel: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView(){
        btnCancel.setTextButton(tempText: "Cancel")
        btnCancel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(cancel)))
    }
    
    @objc func cancel(){
        self.dismiss(animated: true, completion: nil)
    }
}
