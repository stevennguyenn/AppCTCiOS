//
//  BaseViewController.swift
//  APP_CTCT
//
//  Created by vinova on 11/22/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
    }
    
    func setupNavigation(){
        //---
        self.navigationController?.navigationBar.barTintColor = Colors.colorWhite
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.isHidden = false
        self.view.backgroundColor = Colors.background
    }
    
    
    func addBackNavigation(){
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        let btn = UIButton(frame: CGRect(x: 0, y: (view.frame.height) / 4.0 , width: 50, height: 50))

        btn.setImage(#imageLiteral(resourceName: "back"), for: .normal)
        btn.addTarget(self , action: #selector(btnBackTapped), for: .touchUpInside)
        btn.sizeToFit()

        let tap = UITapGestureRecognizer(target: self, action: #selector(self.btnBackTapped))
        view.addGestureRecognizer(tap)
        view.addSubview(btn)
        let button = UIBarButtonItem(customView: view)
        self.navigationItem.leftBarButtonItem = button
    }
    
    @objc func btnBackTapped(){
        if let navigation = self.navigationController {
            navigation.popViewController(animated: true)
        }
    }
    
    func setTitle(title: String) {
        let labelWidth = (navigationController?.navigationBar.bounds.width)! - 110
        let lb = UILabel(frame: CGRect(x:((navigationController?.navigationBar.bounds.width)!/2) - (labelWidth/2), y:0,
                                       width:labelWidth, height:(navigationController?.navigationBar.bounds.height)!))
        lb.font = UIFont.init(name: "Arial-Bold", size: 18)
        lb.text = title
        lb.textAlignment = .center
        lb.numberOfLines = 0
        lb.textColor = Colors.redColor
        lb.sizeToFit()
        
        lb.lineBreakMode = .byWordWrapping
        
        self.navigationItem.titleView = lb
    }
}
