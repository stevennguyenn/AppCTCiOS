//
//  TestRouter.swift
//  APP_CTCT
//
//  Created vinova on 11/8/18.
//  Copyright © 2018 vinova. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class TestRouter: TestWireframeProtocol {

    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        // Change to get view from storyboard if not using progammatic UI
        let view = TestViewController(nibName: nil, bundle: nil)
        let interactor = TestInteractor()
        let router = TestRouter()
        let presenter = TestPresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return view
    }
}
