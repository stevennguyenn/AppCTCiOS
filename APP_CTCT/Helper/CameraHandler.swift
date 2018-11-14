//
//  CameraHandler.swift
//  CTCT
//
//  Created by vinova on 11/6/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation
import UIKit

class CameraHandler: NSObject{
    
    static let shared = CameraHandler()
    weak var delegate : handleImage?
    fileprivate var currentVC : UIViewController!
    
    func camera(vc: UIViewController){
        currentVC = vc
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            let myPickerController = UIImagePickerController()
            myPickerController.delegate = self
            myPickerController.sourceType = .camera
            currentVC.present(myPickerController,animated: true)
        }
    }
    
    func library(vc: UIViewController){
        currentVC = vc
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let myPickerController = UIImagePickerController()
            myPickerController.delegate = self
            myPickerController.sourceType = .photoLibrary
            currentVC.present(myPickerController,animated: true)
        }
    }
}

extension CameraHandler: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        currentVC.dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let imageView = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            delegate?.handle(image: imageView)
        }
        currentVC.dismiss(animated: true, completion: nil)
    }
}

protocol handleImage : class {
    func handle(image: UIImage)
}
