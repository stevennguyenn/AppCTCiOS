//
//  Question.swift
//  APP_CTCT
//
//  Created by vinova on 11/14/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import Foundation

struct QuestionText {
    var id: Int
    var content_question: String
    var question_a: String
    var question_b: String
    var question_c: String
    var question_d: String
    
    init(index: Int,content_question:String,question_a:String,question_b:String,question_c: String,question_d: String) {
        self.id = index
        self.content_question = content_question
        self.question_a = question_a
        self.question_b = question_b
        self.question_c = question_c
        self.question_d = question_d
    }
}
