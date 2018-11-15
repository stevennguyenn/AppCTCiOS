//
//  CellTestQuestion.swift
//  APP_CTCT
//
//  Created by vinova on 11/14/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import UIKit

class CellTestQuestion: UITableViewCell {
    @IBOutlet weak var lblNumberQuestion: UILabel!
    @IBOutlet weak var lblQuestion: UILabel!
    
    @IBOutlet weak var btChoiceA: RatioCTCT!
    @IBOutlet weak var btChoiceB: RatioCTCT!
    @IBOutlet weak var btChoiceC: RatioCTCT!
    @IBOutlet weak var btChoiceD: RatioCTCT!
    
    @IBOutlet weak var lblContentA: UILabel!
    @IBOutlet weak var lblContentB: UILabel!
    @IBOutlet weak var lblContentC: UILabel!
    @IBOutlet weak var lblContentD: UILabel!
    
    weak var delegate: ProcessRadio?
    var index = 0
    var id = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        addTarget()
    }
    
    func setDataforCell(question: QuestionText,index: Int){
        self.index = index
        self.id = question.id
        lblNumberQuestion.text = "Question \(index):"
        lblQuestion.text = question.content_question
        lblContentA.text = question.question_a
        lblContentB.text = question.question_b
        lblContentC.text = question.question_c
        lblContentD.text = question.question_d
    }
    
    private func addTarget(){
        btChoiceA.addTarget(self, action: #selector(choiceA), for: .touchUpInside)
        btChoiceB.addTarget(self, action: #selector(choiceB), for: .touchUpInside)
        btChoiceC.addTarget(self, action: #selector(choiceC), for: .touchUpInside)
        btChoiceD.addTarget(self, action: #selector(choiceD), for: .touchUpInside)
    }
    
    @objc private func choiceA(){
        if (!btChoiceA.isChecked){
            btChoiceB.isChecked = false
            btChoiceC.isChecked = false
            btChoiceD.isChecked = false
            delegate?.processA(index: index, id: id, isChoice: true)
            return
        }
        delegate?.processA(index: index, id: id, isChoice: false)
    }
    
    @objc private func choiceB(){
        if (!btChoiceB.isChecked){
            btChoiceA.isChecked = false
            btChoiceC.isChecked = false
            btChoiceD.isChecked = false
            delegate?.processB(index: index, id: id, isChoice: true)
            return
        }
        delegate?.processB(index: index, id: id, isChoice: false)
    }
    
    @objc private func choiceC(){
        if (!btChoiceC.isChecked){
            btChoiceB.isChecked = false
            btChoiceA.isChecked = false
            btChoiceD.isChecked = false
            delegate?.processC(index: index, id: id, isChoice: true)
            return
        }
        delegate?.processC(index: index, id: id, isChoice: false)
    }
    
    @objc private func choiceD(){
        if (!btChoiceD.isChecked){
            btChoiceB.isChecked = false
            btChoiceC.isChecked = false
            btChoiceA.isChecked = false
            delegate?.processD(index: index, id: id, isChoice: true)
            return
        }
        delegate?.processD(index: index, id: id, isChoice: false)
    }
}
