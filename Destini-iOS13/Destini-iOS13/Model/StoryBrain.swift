//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var arrayOfStories = [
        Story(title: "You see a fork in the road.", c1: "Take a left", c2:"Take a right" ),
        Story(title: "You see a tiger.", c1: "shout for help", c2: "play dead"),
        Story(title: "You found a treasure Chest", c1: "open it", c2: "check for traps")
    ]
    
    var storyNumber = 0
    
    func getStoryText()->String{
        return arrayOfStories[storyNumber].storyTitle
    }
    func getStoryChoice1()->String{
        return arrayOfStories[storyNumber].choice1
    }
    func getStoryChoice2()->String{
        return arrayOfStories[storyNumber].choice2
    
    }
    
}
