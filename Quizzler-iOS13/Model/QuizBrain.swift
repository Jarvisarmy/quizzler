//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Jarvis zhang on 2020-09-16.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation
struct QuizBrain {
    let quiz = [
        Question(text: "Question 1",answer: "False"),
        Question(text: "Question 2",answer: "True"),
        Question(text: "Question 3",answer: "False")
    ]
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(answer userAnswer : String) -> Bool{
        if (userAnswer == quiz[questionNumber].answer) {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestionTest() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() ->Float {
        return Float(questionNumber+1)/Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if (questionNumber+1 < quiz.count) {
            questionNumber += 1
        } else {
            score = 0
            questionNumber = 0
        }
    }
    func getScore() -> Int {
        return score
    }
}
