//
//  MainProtocols.swift
//  APP_CTCT
//
//  Created vinova on 11/7/18.
//  Copyright © 2018 vinova. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import Foundation

//MARK: Wireframe -
protocol MainWireframeProtocol: class {
    func openProfile()
}
//MARK: Presenter -
protocol MainPresenterProtocol: class {

    var interactor: MainInteractorInputProtocol? { get set }
    func openProfile()
}

//MARK: Interactor -
protocol MainInteractorOutputProtocol: class {

    /* Interactor -> Presenter */
}

protocol MainInteractorInputProtocol: class {

    var presenter: MainInteractorOutputProtocol?  { get set }

    /* Presenter -> Interactor */
}

//MARK: View -
protocol MainViewProtocol: class {

    var presenter: MainPresenterProtocol?  { get set }

    /* Presenter -> ViewController */
}