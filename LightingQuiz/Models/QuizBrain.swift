//
//  QuizBrain.swift
//  LightingQuiz
//
//  Created by Jonathan Whiteley on 4/28/20.
//  Copyright © 2020 Jonathan Whiteley. All rights reserved.
//

import Foundation

class QuizBrain{
    let trueFalseQuiz = [
        Questions(q: "A slug's blood is green.", a: "True"),
        Questions(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Questions(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Questions(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Questions(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Questions(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Questions(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Questions(q: "Google was originally called 'Backrub'.", a: "True"),
        Questions(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Questions(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Questions(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Questions(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    var questionNumber = 0
    var userScore = 0
    
    func checkAnswer(_ userAnswer: String) -> Bool{
        
        if userAnswer == trueFalseQuiz[questionNumber].answer {
            userScore += 1
            return true
        } else {
            return false
        }
    }
    func getQuestionText() -> String{
        return trueFalseQuiz[questionNumber].text
    }
    
    // This needs to include all question types
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(trueFalseQuiz.count)
    }
    func nextQuestion(){
        if questionNumber + 1 < trueFalseQuiz.count {
            questionNumber += 1
        }
        else {
            questionNumber = 0
            userScore = 0
        }
    }
    func getScore() -> Int {
        return userScore
    }
    
    // This needs to include all question types
    func getAnswer(a: Int) -> String {
        return trueFalseQuiz[questionNumber].answer
    }
}

class MultiQuizBrain: QuizBrain{
    
    // Multiple choice array
    let multipleChoiceQuiz = [
        MultiQuestion(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        MultiQuestion(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        MultiQuestion(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        MultiQuestion(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        MultiQuestion(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        MultiQuestion(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        MultiQuestion(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        MultiQuestion(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        MultiQuestion(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    // Multiple choice code
    override func checkAnswer(_ userAnswer: String) -> Bool{
        
        if userAnswer == multipleChoiceQuiz[questionNumber].answer {
            userScore += 1
            return true
        } else {
            return false
        }
    }
    override func getQuestionText() -> String{
        return multipleChoiceQuiz[questionNumber].text
    }
}
