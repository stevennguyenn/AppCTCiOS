//
//  PDFProtocols.swift
//  APP_CTCT
//
//  Created vinova on 11/8/18.
//  Copyright © 2018 vinova. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import Foundation

//MARK: Wireframe -
protocol PDFWireframeProtocol: class {

}
//MARK: Presenter -
protocol PDFPresenterProtocol: class {

    var interactor: PDFInteractorInputProtocol? { get set }
}

//MARK: Interactor -
protocol PDFInteractorOutputProtocol: class {

    /* Interactor -> Presenter */
}

protocol PDFInteractorInputProtocol: class {

    var presenter: PDFInteractorOutputProtocol?  { get set }

    /* Presenter -> Interactor */
}

//MARK: View -
protocol PDFViewProtocol: class {

    var presenter: PDFPresenterProtocol?  { get set }

    /* Presenter -> ViewController */
}
