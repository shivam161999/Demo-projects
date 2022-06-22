//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by admin on 22/06/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Questions {
    let text : String
    let answer : String
    init(q:String,a:String){
        text = q
        answer = a
    }
}
