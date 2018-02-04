//
//  StoryBank.swift
//  Destini
//
//  Created by Pedro Eusébio - ISEP on 04/02/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class StoryBank {
    
    var storiesList = [Story]()
    
    init(){
        let story4 = Story(text: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?", ans1: nil, ans2: nil)
        
        let story5 = Story(text: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.", ans1: nil, ans2: nil)
        
        let story6 = Story(text: "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\"", ans1: nil, ans2: nil)
        
        //Story 3
        let story3ans1 = Answer(text: "I love Elton John! Hand him the cassette tape.", story: story6)
        let story3ans2 = Answer(text: "It\'s him or me! You take the knife and stab him.", story: story5)
        let story3 = Story(text: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.", ans1: story3ans1, ans2: story3ans2)
        
        //Story 2
        let story2ans1 = Answer(text:"At least he\'s honest. I\'ll climb in.", story: story3)
        let story2ans2 = Answer(text: "Wait, I know how to change a tire.", story: story5)
        let story2 = Story(text: "He nods slowly, unphased by the question.", ans1: story2ans1, ans2: story2ans2)
        
        //Story 1
        let story1ans1 = Answer(text: "I\'ll hop in. Thanks for the help!", story: story3)
        let story1ans2 = Answer(text: "Better ask him if he\'s a murderer first.", story: story2)
        let story1 = Story(text: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\".", ans1: story1ans1, ans2: story1ans2)
        
        storiesList.append(story1)
        storiesList.append(story2)
        storiesList.append(story3)
        storiesList.append(story4)
        storiesList.append(story5)
        storiesList.append(story6)
    }
}
