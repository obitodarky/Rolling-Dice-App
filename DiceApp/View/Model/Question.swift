//
//  Question.swift
//  DiceApp
//
//  Created by Harsh Mehta on 25/07/18.
//  Copyright © 2018 Harsh Mehta. All rights reserved.
//

import Foundation

class Question{
    
    let questionText: String
    let answerText: Bool

    //initializer decides what happens when a new object is created of the class
    init(text: String,correctAnswer: Bool) {
        questionText = text
        answerText = correctAnswer        
    }
}
