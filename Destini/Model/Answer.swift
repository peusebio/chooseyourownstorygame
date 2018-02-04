//
//  Answer.swift
//  Destini
//
//  Created by Pedro Eusébio - ISEP on 04/02/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Answer {
    var answerText : String
    var nextStory : Story?
    
    init (text: String, story: Story?){
        answerText = text
        if story != nil {
            nextStory = story
        }
    }
}
