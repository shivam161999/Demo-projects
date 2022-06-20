//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [UIImage.init(named: "DiceOne"), UIImage.init(named:"DiceTwo"), UIImage.init(named: "DiceThree"), UIImage.init(named: "DiceFour"), UIImage.init(named: "DiceFive"), UIImage.init(named: "DiceSix")]
        
        diceImageView1.image=diceArray[Int.random(in: 0...5)]
        
        diceImageView2.image=diceArray[Int.random(in: 0...5)]
   
       
         
    }
    
}

