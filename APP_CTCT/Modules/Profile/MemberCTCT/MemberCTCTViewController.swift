//
//  MemberCTCTViewController.swift
//  APP_CTCT
//
//  Created vinova on 11/15/18.
//  Copyright © 2018 vinova. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class MemberCTCTViewController: UIViewController, MemberCTCTViewProtocol {

	var presenter: MemberCTCTPresenterProtocol?
    
    @IBOutlet weak var btnConfirm: CustomButton!
    @IBOutlet weak var viewConfirmCode: ViewTextField!
    @IBOutlet weak var viewCode: ViewTextField!
    @IBOutlet weak var viewMSSV: ViewTextField!
    @IBOutlet weak var viewName: ViewTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView(){
        self.navigationItem.title = "Member CTCT"
        viewName.setDataView(textLabel: "Name", placeText: "Name")
        viewMSSV.setDataView(textLabel: "MSSV", placeText: "MSSV")
        viewCode.setDataView(textLabel: "Code", placeText: "Code")
        viewConfirmCode.setDataView(textLabel: "Confirm Code", placeText: "Confirm Code")
        viewCode.setViewPassword()
        viewConfirmCode.setViewPassword()
        btnConfirm.setTextButton(tempText: "Confirm")
        btnConfirm.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(confirm)))
    }
    
    @objc func confirm(){
        //ViewIndicator.shared.showProgressView()
    }
}
