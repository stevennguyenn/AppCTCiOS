//
//  TestViewController.swift
//  APP_CTCT
//
//  Created vinova on 11/8/18.
//  Copyright © 2018 vinova. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class TestViewController: UIViewController {
   
    @IBOutlet weak var tbQuestion: UITableView!
    var presenter: TestPresenterProtocol?
    var arrQuestion: [QuestionText] = []{
        didSet{
            tbQuestion.reloadData()
            arrResultChoice = [ResultText](repeating: ResultText(), count: arrQuestion.count)
        }
    }
    
    var arrResultChoice : [ResultText]?

	override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        getDataQuestion()
    }
    
    func getDataQuestion(){
        presenter?.notifyInteratorGetQuestion()
    }
    
    func registerCell(){
        tbQuestion.delegate = self
        tbQuestion.dataSource = self
        tbQuestion.register(UINib.init(nibName: "CellTestQuestion", bundle: nil), forCellReuseIdentifier: "CellTestQuestion")
    }
}

extension TestViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrQuestion.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CellTestQuestion") as? CellTestQuestion else {
            return UITableViewCell()
        }
        cell.delegate = self
        cell.setDataforCell(question: arrQuestion[indexPath.row], index: indexPath.row)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
extension TestViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}

extension TestViewController: ProcessButton{
    func processA(index: Int, id: Int,isChoice: Bool) {
        if arrResultChoice != nil {
            if isChoice{
                arrResultChoice?[index] = ResultText(id: id, result: "a")
                return
            }
            arrResultChoice?[index] = ResultText()
        }
    }
    
    func processB(index: Int, id: Int,isChoice: Bool) {
        if arrResultChoice != nil {
            if isChoice{
                arrResultChoice?[index] = ResultText(id: id, result: "b")
                return
            }
            arrResultChoice?[index] = ResultText()
        }
    }
    
    func processC(index: Int, id: Int,isChoice: Bool) {
        if arrResultChoice != nil {
            if isChoice{
                arrResultChoice?[index] = ResultText(id: id, result: "c")
                return
            }
            arrResultChoice?[index] = ResultText()
        }
    }
    
    func processD(index: Int, id: Int,isChoice: Bool) {
        if arrResultChoice != nil {
            if isChoice{
                arrResultChoice?[index] = ResultText(id: id, result: "d")
                return
            }
            arrResultChoice?[index] = ResultText()
        }
    }
}

extension TestViewController : TestViewProtocol{
    func getQuestionSuccess(data: [QuestionText]) {
        arrQuestion = data
    }
}
