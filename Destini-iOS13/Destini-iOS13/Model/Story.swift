//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    var storyTitle : String
    let choice1 : String
    let choice2 : String
    init(title:String,c1:String,c2:String){
        storyTitle = title
        choice1 = c1
        choice2 = c2
    }
}
