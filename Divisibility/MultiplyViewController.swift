//
//  MultiplyViewController.swift
//  Divisibility
//
//  Created by student3 on 11/17/16.
//  Copyright © 2016 John Hersey High School. All rights reserved.
//

import UIKit

class MultiplyViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var numberOne: UITextField!
    @IBOutlet weak var numberTwo: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    
    
    @IBAction func multiplyButton(_ sender: UIButton)
    {
        var product = Int(numberOne.text!)! * Int(numberTwo.text!)!
        answerLabel.text = String(product)
        print (answerLabel)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        if numberOne.text == ""
        {
            calculateButton.isEnabled = true
            clearButton.isEnabled = true
        }
        return true
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        answerLabel.text = ""
        calculateButton.isEnabled = false
        clearButton.isEnabled = false

    }
    
    @IBAction func clearLabel(_ sender: UIButton)
    {
        numberOne.text = ""
        numberTwo.text = ""
        answerLabel.text = ""
    }
    

}
