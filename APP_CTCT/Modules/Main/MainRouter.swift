//
//  MainRouter.swift
//  APP_CTCT
//
//  Created vinova on 11/7/18.
//  Copyright © 2018 vinova. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class MainRouter: MainWireframeProtocol {

    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        // Change to get view from storyboard if not using progammatic UI
        let view = MainViewController(nibName: nil, bundle: nil)
        let interactor = MainInteractor()
        let router = MainRouter()
        let presenter = MainPresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return view
    }
    
    func openProfile() {
        viewController?.navigationController?.pushViewController(ProfileRouter.createModule(), animated: true
        )
    }
    
    func openTest() {
        viewController?.navigationController?.pushViewController(TestRouter.createModule(), animated: true
        )
    }
}
