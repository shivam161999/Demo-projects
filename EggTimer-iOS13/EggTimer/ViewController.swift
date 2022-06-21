//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var DisplayText: UILabel!
    
    
    let softTime = 5
    let mediumTime = 8
    let hardTime = 12
    var counter = 0
    var totalSeconds = 0
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        counter = 0
        totalSeconds = 0
        let hardness = sender.currentTitle
//        switch hardness {
//        case "Soft" :
//            print(softTime)
//        case "Medium" :
//            print(mediumTime)
//        case "Hard" :
//            print(hardTime)
//        default :
//            print("Invalid selection")
//        }
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
            let dict = ["Soft": 300 , "Medium":480 ,"Hard":720]
            let secondsRemaining = dict[hardness!]
            counter = secondsRemaining!
        totalSeconds = dict[hardness!] ?? 0
        
        
        
        
      
    }
    
    @objc func updateCounter(){
        if counter > 0 {
            
            print("\(counter) seconds to boil the egg ")
            let secondsDone = (totalSeconds - counter )
            progressBar.progress = Float(secondsDone)/100
            counter -= 1
        }
        if counter == 0{
            progressBar.progress = 1.0
            DisplayText.text = "Egg Boiled !!!"
            
        }
    }
    
}
