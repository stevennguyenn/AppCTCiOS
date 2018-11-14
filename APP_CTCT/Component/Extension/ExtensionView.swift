//
//  ExtensionView.swift
//  CTCT
//
//  Created by vinova on 11/6/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import UIKit

extension UIView{
    func fullTopLeftRightBottom(topAnchor: NSLayoutYAxisAnchor, leadingAnchor: NSLayoutXAxisAnchor, bottomAnchor: NSLayoutYAxisAnchor, trailingAnchor: NSLayoutXAxisAnchor){
        self.topAnchor.constraint(equalTo: topAnchor).isActive = true
        self.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
    func setLeftCenterYSize(leadingAnchor: NSLayoutXAxisAnchor,constantLeading: CGFloat,centerY: NSLayoutYAxisAnchor,size: CGSize){
        self.leadingAnchor.constraint(equalTo: leadingAnchor, constant: constantLeading).isActive = true
        self.centerYAnchor.constraint(equalTo: centerY).isActive = true
        self.widthAnchor.constraint(equalToConstant: size.width).isActive = true
        self.heightAnchor.constraint(equalToConstant: size.height).isActive = true
    }
    
    func fullTopLeftRightBottom_WithConstantLeft(topAnchor: NSLayoutYAxisAnchor, leadingAnchor: NSLayoutXAxisAnchor,constantLeading: CGFloat, bottomAnchor: NSLayoutYAxisAnchor, trailingAnchor: NSLayoutXAxisAnchor){
        self.topAnchor.constraint(equalTo: topAnchor).isActive = true
        self.leadingAnchor.constraint(equalTo: leadingAnchor,constant: constantLeading).isActive = true
        self.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
    func setupBoder(borderColor: UIColor?, borderWidth: CGFloat, borderCorner: CGFloat?){
        if let color = borderColor {
            self.layer.borderColor = color.cgColor        }
        self.layer.borderWidth = borderWidth
        if let corner = borderCorner {
            self.layer.cornerRadius = corner
            self.clipsToBounds = true
        }
    }
    func centerView(centerX: NSLayoutXAxisAnchor, centerY: NSLayoutYAxisAnchor){
        self.centerXAnchor.constraint(equalTo: centerX).isActive = true
        self.centerYAnchor.constraint(equalTo: centerY).isActive = true
    }
    
    func setColorBackground(color: UIColor,alpha: CGFloat){
        color.withAlphaComponent(alpha)
        self.backgroundColor = color
    }
    
    func setWidthHeightCenterXY(width: CGFloat, height: CGFloat, centerX: NSLayoutXAxisAnchor, centerY: NSLayoutYAxisAnchor){
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
        self.centerXAnchor.constraint(equalTo: centerX).isActive = true
        self.centerYAnchor.constraint(equalTo: centerY).isActive = true
    }
}
