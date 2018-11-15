//
//  ChangePasswordProtocols.swift
//  APP_CTCT
//
//  Created vinova on 11/15/18.
//  Copyright © 2018 vinova. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import Foundation

//MARK: Wireframe -
protocol ChangePasswordWireframeProtocol: class {

}
//MARK: Presenter -
protocol ChangePasswordPresenterProtocol: class {

    var interactor: ChangePasswordInteractorInputProtocol? { get set }
    func notifyInterator(currentPass: String?,newPass: String?,confirmPass: String?)
}

//MARK: Interactor -
protocol ChangePasswordInteractorOutputProtocol: class {
    func currentPassEmpty()
    func newPassEmpty()
    func confirmPassEmpty()
    func currentPassEqualNewPass()
    func newPassDiffenceConfirmPass()
    func successed()
    func failedNetwork()
    /* Interactor -> Presenter */
}

protocol ChangePasswordInteractorInputProtocol: class {

    var presenter: ChangePasswordInteractorOutputProtocol?  { get set }
    func notifyInterator(currentPass: String?,newPass: String?,confirmPass: String?)
    /* Presenter -> Interactor */
}

//MARK: View -
protocol ChangePasswordViewProtocol: class {

    var presenter: ChangePasswordPresenterProtocol?  { get set }
    func currentPassEmpty()
    func newPassEmpty()
    func confirmPassEmpty()
    func currentPassEqualNewPass()
    func newPassDiffenceConfirmPass()
    func successed()
    func failedNetwork()

    /* Presenter -> ViewController */
}
