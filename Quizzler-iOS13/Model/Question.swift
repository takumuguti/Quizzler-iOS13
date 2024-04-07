//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Takudzwanashe Muguti on 2024/03/18.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q text: String, a answer: String) {
        self.text = text
        self.answer = answer
    }
}
