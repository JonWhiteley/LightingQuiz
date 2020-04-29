//
//  Questions.swift
//  LightingQuiz
//
//  Created by Jonathan Whiteley on 4/28/20.
//  Copyright © 2020 Jonathan Whiteley. All rights reserved.
//

import Foundation

struct Questions{
    let text: String
    let answer: String
    
    init(q: String, a: String){
        self.text = q
        self.answer = a
    }
}
struct MultiQuestion {
    let text: String
    let possibleAnswer: [String]
    let answer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        self.text = q
        self.possibleAnswer = a
        self.answer = correctAnswer
    }
}
