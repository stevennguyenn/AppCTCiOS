//
//  MainPresenter.swift
//  APP_CTCT
//
//  Created vinova on 11/7/18.
//  Copyright © 2018 vinova. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class MainPresenter: MainPresenterProtocol, MainInteractorOutputProtocol {

    weak private var view: MainViewProtocol?
    var interactor: MainInteractorInputProtocol?
    private let router: MainWireframeProtocol

    init(interface: MainViewProtocol, interactor: MainInteractorInputProtocol?, router: MainWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }
    
    func openProfile() {
        router.openProfile()
    }

}
