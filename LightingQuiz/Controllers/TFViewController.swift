//
//  ViewController.swift
//  LightingQuiz
//
//  Created by Jonathan Whiteley on 4/21/20.
//  Copyright © 2020 Jonathan Whiteley. All rights reserved.
//

import UIKit

class TFViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionImage: UIImageView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    

    override func viewDidLoad() {
        super.viewDidLoad()
      
        updateUI()
    }
    
    
    @IBAction func answerChoice(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        quizBrain.nextQuestion()
        
    }
    
     @objc func updateUI(){
           questionLabel.text = quizBrain.getQuestionText()
           //progressBar.progress = quizBrain.getProgress()
           trueButton.backgroundColor = UIColor.darkGray
           //trueButton.setTitle(quizBrain.getAnswer(a: 0), for: .normal)
           falseButton.backgroundColor = UIColor.darkGray
           //falseButton.setTitle(quizBrain.getAnswer(a: 1), for: .normal)
           //scoreLabel.textColor = UIColor.white
           //scoreLabel.text = "Score: \(quizBrain.getScore())"
           
       }

}

