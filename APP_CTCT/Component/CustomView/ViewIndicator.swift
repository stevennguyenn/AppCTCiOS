//
//  Indicator.swift
//  APP_CTCT
//
//  Created by vinova on 11/8/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation
import UIKit
import NVActivityIndicatorView

class ViewIndicator{
    
    public static let shared = ViewIndicator()
    
    let viewBackGround : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(hex: 0x444444, alpha: 0.7)
        return view
    }()
    
    let indicator: NVActivityIndicatorView = {
        let view = NVActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        view.type = NVActivityIndicatorType.circleStrokeSpin
        view.color = Colors.colorWhite
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewContainer : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hex: 0xffffff, alpha: 0.3)
        return view
    }()
    
    init(){
        viewContainer.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        viewBackGround.addSubview(indicator)
        viewContainer.addSubview(viewBackGround)
        viewBackGround.setupBoder(borderColor: nil, borderWidth: 0, borderCorner: 5)
        viewBackGround.setWidthHeightCenterXY(width: 200, height: 100, centerX: viewContainer.centerXAnchor, centerY: viewContainer.centerYAnchor)
        indicator.setWidthHeightCenterXY(width: 60, height: 60, centerX: viewBackGround.centerXAnchor, centerY: viewBackGround.centerYAnchor)
    }
    
    func showProgressView(){
        if let window = UIApplication.shared.keyWindow {
            window.addSubview(viewContainer)
        }
        indicator.startAnimating()
    }
    
    func hideProgressView(){
        indicator.stopAnimating()
        viewContainer.removeFromSuperview()
    }
}
