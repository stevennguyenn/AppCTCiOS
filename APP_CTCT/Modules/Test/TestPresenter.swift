//
//  TestPresenter.swift
//  APP_CTCT
//
//  Created vinova on 11/8/18.
//  Copyright © 2018 vinova. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class TestPresenter: TestPresenterProtocol, TestInteractorOutputProtocol {
    
    weak private var view: TestViewProtocol?
    var interactor: TestInteractorInputProtocol?
    private let router: TestWireframeProtocol

    init(interface: TestViewProtocol, interactor: TestInteractorInputProtocol?, router: TestWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }
    
    func notifyInteratorGetQuestion() {
        interactor?.notifyInteratorGetQuestion()
    }
    
    func returnQuestionSuccess(data: [QuestionText]) {
        view?.getQuestionSuccess(data: data)
    }

}
