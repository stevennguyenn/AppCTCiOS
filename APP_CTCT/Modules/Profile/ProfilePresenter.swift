//
//  ProfilePresenter.swift
//  APP_CTCT
//
//  Created vinova on 11/7/18.
//  Copyright © 2018 vinova. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class ProfilePresenter: ProfilePresenterProtocol, ProfileInteractorOutputProtocol {

    weak private var view: ProfileViewProtocol?
    var interactor: ProfileInteractorInputProtocol?
    private let router: ProfileWireframeProtocol

    init(interface: ProfileViewProtocol, interactor: ProfileInteractorInputProtocol?, router: ProfileWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}
