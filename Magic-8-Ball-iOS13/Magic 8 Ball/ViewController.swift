//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView1: UIImageView!
    
    let ballArray = [UIImage.init(named: "b all1"),UIImage.init(named: "ball2"),UIImage.init(named: "ball4"),UIImage.init(named: "ball5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView1.image = UIImage.init(named: "ball3")
    }
    

    @IBAction func askButtonPressed(_ sender: Any) {
        
        imageView1.image = ballArray[Int.random(in:0...3)]
        
    }
    
}

