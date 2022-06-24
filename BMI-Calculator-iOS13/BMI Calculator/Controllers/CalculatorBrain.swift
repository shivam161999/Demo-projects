//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by admin on 23/06/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var tempBMI : Float?
    
 mutating func  calculateBMI(Height : Float, Weight : Float)->Float {
      let  BMI = Weight / pow(Height,2)
      tempBMI = BMI
                return BMI
    }
    func getBMIValue() -> Float {
        return tempBMI ?? 0.0
    }
}
