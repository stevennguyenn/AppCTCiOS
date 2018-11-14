//
//  PDFPresenter.swift
//  APP_CTCT
//
//  Created vinova on 11/8/18.
//  Copyright © 2018 vinova. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class PDFPresenter: PDFPresenterProtocol, PDFInteractorOutputProtocol {

    weak private var view: PDFViewProtocol?
    var interactor: PDFInteractorInputProtocol?
    private let router: PDFWireframeProtocol

    init(interface: PDFViewProtocol, interactor: PDFInteractorInputProtocol?, router: PDFWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}
