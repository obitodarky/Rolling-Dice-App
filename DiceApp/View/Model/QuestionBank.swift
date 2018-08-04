//
//  QuestionBank.swift
//  DiceApp
//
//  Created by Harsh Mehta on 26/07/18.
//  Copyright © 2018 Harsh Mehta. All rights reserved.
//

import Foundation

class QuestionBank{
    
    //you can store a object inside an array to define what will be the type of elements in the array, in this case, the question object
    var list = [Question]()
    
    init(){
        let item = Question(text: "test string", correctAnswer: true)
        
        list.append(item)
        list.append(Question(text: "another test", correctAnswer: false))
    }
    
}
