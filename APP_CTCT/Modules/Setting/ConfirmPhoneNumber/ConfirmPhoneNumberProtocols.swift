//
//  ConfirmPhoneNumberProtocols.swift
//  APP_CTCT
//
//  Created vinova on 11/20/18.
//  Copyright © 2018 vinova. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import Foundation

//MARK: Wireframe -
protocol ConfirmPhoneNumberWireframeProtocol: class {

}
//MARK: Presenter -
protocol ConfirmPhoneNumberPresenterProtocol: class {

    var interactor: ConfirmPhoneNumberInteractorInputProtocol? { get set }
}

//MARK: Interactor -
protocol ConfirmPhoneNumberInteractorOutputProtocol: class {

    /* Interactor -> Presenter */
}

protocol ConfirmPhoneNumberInteractorInputProtocol: class {

    var presenter: ConfirmPhoneNumberInteractorOutputProtocol?  { get set }

    /* Presenter -> Interactor */
}

//MARK: View -
protocol ConfirmPhoneNumberViewProtocol: class {

    var presenter: ConfirmPhoneNumberPresenterProtocol?  { get set }

    /* Presenter -> ViewController */
}