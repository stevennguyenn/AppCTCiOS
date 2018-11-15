//
//  ChangePasswordRouter.swift
//  APP_CTCT
//
//  Created vinova on 11/15/18.
//  Copyright © 2018 vinova. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class ChangePasswordRouter: ChangePasswordWireframeProtocol {

    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        // Change to get view from storyboard if not using progammatic UI
        let view = ChangePasswordViewController(nibName: nil, bundle: nil)
        let interactor = ChangePasswordInteractor()
        let router = ChangePasswordRouter()
        let presenter = ChangePasswordPresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return view
    }
}
