//
//  RegisterProtocols.swift
//  CTCT
//
//  Created vinova on 11/6/18.
//  Copyright © 2018 vinova. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import Foundation

//MARK: Wireframe -
protocol RegisterWireframeProtocol: class {

}
//MARK: Presenter -
protocol RegisterPresenterProtocol: class {

    var interactor: RegisterInteractorInputProtocol? { get set }
}

//MARK: Interactor -
protocol RegisterInteractorOutputProtocol: class {

    /* Interactor -> Presenter */
}

protocol RegisterInteractorInputProtocol: class {

    var presenter: RegisterInteractorOutputProtocol?  { get set }

    /* Presenter -> Interactor */
}

//MARK: View -
protocol RegisterViewProtocol: class {

    var presenter: RegisterPresenterProtocol?  { get set }

    /* Presenter -> ViewController */
}
