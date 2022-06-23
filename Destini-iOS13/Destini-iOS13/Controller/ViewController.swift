//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
  
    var storyBrain = StoryBrain()
    var userResponse = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        userResponse = sender.currentTitle!
        if storyBrain.storyNumber < storyBrain.arrayOfStories.count{
        updateUI()
        }
        else{
            storyLabel.text = "End Of Story"
        }
        
    }
    func updateUI(){
        storyLabel.text = storyBrain.getStoryText()
        choice1Button.setTitle(storyBrain.getStoryChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getStoryChoice2(), for: .normal)
        
            if userResponse == storyBrain.getStoryChoice1(){
                        storyBrain.storyNumber += 1
            }
            else if userResponse == storyBrain.getStoryChoice2(){
             storyBrain.storyNumber += 2
                        }

        
    }
}

