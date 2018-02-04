//
//  Story.swift
//  Destini
//
//  Created by Pedro Eusébio - ISEP on 04/02/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Story {
    var storyText : String
    var firstAnswer : Answer?
    var secondAnswer : Answer?
    
    init (text: String, ans1 : Answer?, ans2 : Answer?){
        storyText = text
        if ans1 != nil {
            firstAnswer = ans1!
        }
        if ans2 != nil {
            secondAnswer = ans2!
        }
    }
}
