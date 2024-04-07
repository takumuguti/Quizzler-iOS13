//
//  Quiz.swift
//  Quizzler-iOS13
//
//  Created by Takudzwanashe Muguti on 2024/03/18.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Quiz {
    let questions = [Question(q: "A slug's blood is green.", a: "True"),
                     Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
                     Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
                     Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
                     Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
                     Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
                     Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
                     Question(q: "Google was originally called 'Backrub'.", a: "True"),
                     Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
                     Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False")]
    
    var currentQuestion = 0
    var score = 0
    
    func getCurrentQuestion() -> String {
        return questions[currentQuestion].text
    }
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == questions[currentQuestion].answer {
            score += 1
            return true
        }
        return false
    }
    
    func getProgress() -> Float {
        return Float(currentQuestion + 1) / Float(questions.count)
    }
    
    func getScore() -> Int {
        return score
    }

    mutating func nextQuestion(){
        if currentQuestion + 1 < questions.count {
            currentQuestion += 1
        }else{
            currentQuestion = 0
            score = 0
        }
    }
    

    
}