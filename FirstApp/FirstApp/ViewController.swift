//
//  ViewController.swift
//  FirstApp
//
//  Created by admin on 16/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calcTextField: UITextField!
    
    @IBOutlet weak var plusButton: UIButton!
    
    @IBOutlet weak var equalButton: UIButton!
    
    @IBOutlet weak var clearButton: UIButton!
    
    var sum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func onPlusPressed(_ sender: Any) {
        if let val = calcTextField.text as? NSString {
            sum = val.integerValue
        }
        calcTextField.text = ""
    }
    
    
    @IBAction func onEqualPressed(_ sender: Any) {
        if calcTextField.text != "" {
            if let val = calcTextField.text as? NSString {
                sum = sum + val.integerValue
            }
            calcTextField.text = "\(sum)"
            sum = 0
        }
    }
    
    @IBAction func onClearClicked(_ sender: Any) {
        calcTextField.text = ""
        sum = 0
    }

}
