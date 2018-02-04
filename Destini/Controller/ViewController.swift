//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var allStories = StoryBank()
    var currentStory = Story(text: "", ans1: nil, ans2: nil)
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var restartButton: UIButton!     // Has TAG = 3
    @IBOutlet weak var storyTextView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeGame()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            currentStory = (currentStory.firstAnswer?.nextStory!)!
            updateUI()
        }
        else if sender.tag == 2{
            currentStory = (currentStory.secondAnswer?.nextStory!)!
            updateUI()
        }
        else {
            initializeGame()
        }
    }
    
    func initializeGame(){
        restartButton.isHidden = true
        topButton.isHidden = false
        bottomButton.isHidden = false
        currentStory = allStories.storiesList[0]
        updateUI()
    }
    
    func updateUI(){
        storyTextView.text = currentStory.storyText
        if currentStory.firstAnswer != nil && currentStory.secondAnswer != nil {
            topButton.setTitle(currentStory.firstAnswer?.answerText, for: .normal)
            bottomButton.setTitle(currentStory.secondAnswer?.answerText, for: .normal)
        }
        else {
            topButton.isHidden = true
            bottomButton.isHidden = true
            restartButton.isHidden = false
        }
    }
}
