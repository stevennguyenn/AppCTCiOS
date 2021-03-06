//
//  ProfileProtocols.swift
//  APP_CTCT
//
//  Created vinova on 11/7/18.
//  Copyright © 2018 vinova. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import Foundation

//MARK: Wireframe -
protocol ProfileWireframeProtocol: class {

}
//MARK: Presenter -
protocol ProfilePresenterProtocol: class {

    var interactor: ProfileInteractorInputProtocol? { get set }
}

//MARK: Interactor -
protocol ProfileInteractorOutputProtocol: class {

    /* Interactor -> Presenter */
}

protocol ProfileInteractorInputProtocol: class {

    var presenter: ProfileInteractorOutputProtocol?  { get set }

    /* Presenter -> Interactor */
}

//MARK: View -
protocol ProfileViewProtocol: class {

    var presenter: ProfilePresenterProtocol?  { get set }

    /* Presenter -> ViewController */
}
