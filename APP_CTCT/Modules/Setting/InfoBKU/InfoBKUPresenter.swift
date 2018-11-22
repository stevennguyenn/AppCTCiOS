//
//  InfoBKUPresenter.swift
//  APP_CTCT
//
//  Created vinova on 11/22/18.
//  Copyright © 2018 vinova. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class InfoBKUPresenter: InfoBKUPresenterProtocol, InfoBKUInteractorOutputProtocol {

    weak private var view: InfoBKUViewProtocol?
    var interactor: InfoBKUInteractorInputProtocol?
    private let router: InfoBKUWireframeProtocol

    init(interface: InfoBKUViewProtocol, interactor: InfoBKUInteractorInputProtocol?, router: InfoBKUWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }
}
