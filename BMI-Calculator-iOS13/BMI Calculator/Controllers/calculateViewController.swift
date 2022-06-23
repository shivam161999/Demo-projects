//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class calculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
        
    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBAction func hightSliderChange(_ sender: UISlider) {
        let height = ( String(format: "%.2F", sender.value) + "m")
        heightLable.text = height
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let weight = String(Int(sender.value)) + "Kg"
        weightLabel.text = weight
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let weight = weightSlider.value
        let height = heightSlider.value
       
        calculatorBrain.calculateBMI(Height : height , Weight : weight)
        
        self.performSegue(withIdentifier: "gotoResults",sender: self)
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier  == "gotoResults"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = String(format: "%.1f", calculatorBrain.getBMIValue())
            
        }
    }

}

