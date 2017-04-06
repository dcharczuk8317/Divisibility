//
//  RootViewController.swift
//  Divisibility
//
//  Created by student3 on 12/1/16.
//  Copyright © 2016 John Hersey High School. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UITextFieldDelegate
{
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    
    
    func rootOfNumber(){
        if Int(numberTextField.text!)! / 1 == 1
        {
            return answerLabel.text = "1"
        }
        else if Int(numberTextField.text!)! / 2 == 2
        {
            return answerLabel.text = "2"
        }
        else if Int(numberTextField.text!)! / 3 == 3
        {
            return answerLabel.text = "3"
        }
        else if Int(numberTextField.text!)! / 4 == 4
        {
            return answerLabel.text = "4"
        }
        else if Int(numberTextField.text!)! / 5 == 5
        {
            return answerLabel.text = "5"
        }
        else if Int(numberTextField.text!)! / 6 == 6
        {
            return answerLabel.text = "6"
        }
        else if Int(numberTextField.text!)! / 7 == 7
        {
            return answerLabel.text = "7"
        }
        else if Int(numberTextField.text!)! / 8 == 8
        {
            return answerLabel.text = "8"
        }
        else if Int(numberTextField.text!)! / 9 == 9
        {
            return answerLabel.text = "9"
        }
        else if Int(numberTextField.text!)! / 10 == 10
        {
            return answerLabel.text = "10"
        }
        else if Int(numberTextField.text!)! / 11 == 11
        {
            return answerLabel.text = "11"
        }
        else if Int(numberTextField.text!)! / 12 == 12
        {
            return answerLabel.text = "12"
        }
        else if Int(numberTextField.text!)! / 13 == 13
        {
            return answerLabel.text = "13"
        }
        else if Int(numberTextField.text!)! / 14 == 14
        {
            return answerLabel.text = "14"
        }
        else if Int(numberTextField.text!)! / 15 == 15
        {
            return answerLabel.text = "15"
        }
        else if Int(numberTextField.text!)! / 16 == 16
        {
            return answerLabel.text = "16"
        }
        else if Int(numberTextField.text!)! / 17 == 17
        {
            return answerLabel.text = "17"
        }
        else if Int(numberTextField.text!)! / 18 == 18
        {
            return answerLabel.text = "18"
        }
        else if Int(numberTextField.text!)! / 19 == 19
        {
            return answerLabel.text = "19"
        }
        else if Int(numberTextField.text!)! / 20 == 20
        {
            return answerLabel.text = "20"
        }
        else
        {
            return answerLabel.text = "Not a perfect square"
        }
    }

    @IBAction func calculateOnPressed(_ sender: UIButton)
    {
        print(rootOfNumber())
    }
    
    @IBAction func clearFields(_ sender: UIButton)
    {
        numberTextField.text = ""
        answerLabel.text = ""
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        if numberTextField.text == ""
        {
            
            calculateButton.isEnabled = true
            clearButton.isEnabled = true
        }
        return true
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        numberTextField.text = ""
        answerLabel.text = ""
        calculateButton.isEnabled = false
        clearButton.isEnabled = false

    }

}
