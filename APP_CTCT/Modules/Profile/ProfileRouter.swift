//
//  ProfileRouter.swift
//  APP_CTCT
//
//  Created vinova on 11/7/18.
//  Copyright © 2018 vinova. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class ProfileRouter: ProfileWireframeProtocol {

    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        // Change to get view from storyboard if not using progammatic UI
        let view = ProfileViewController(nibName: nil, bundle: nil)
        let interactor = ProfileInteractor()
        let router = ProfileRouter()
        let presenter = ProfilePresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return view
    }
    
    func gotoChangePassword() {
        viewController?.navigationController?.pushViewController(ChangePasswordRouter.createModule(), animated: true)
    }
    
    func gotoMemberCTCT() {
        viewController?.navigationController?.pushViewController(MemberCTCTRouter.createModule(), animated: true)
    }
}
