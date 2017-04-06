//
//  DivideCalculatorViewController.swift
//  Divisibility
//
//  Created by student3 on 12/14/16.
//  Copyright © 2016 John Hersey High School. All rights reserved.
//

import UIKit

class DivideCalculatorViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var secondNumberTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    
    
    var divideEnteredNumber = NumberToDivide()
    
    
    func divideNumbers()
    {
        var secondNumber = Double(secondNumberTextField.text!)!
        var result = (divideEnteredNumber.number) / (secondNumber)
        return answerLabel.text = String(result)
    }
    
    @IBAction func calculateAnswerButton(_ sender: UIButton)
    {
        print(divideNumbers())
//        return answerLabel.text = "\(divideNumbers)"
    }
    
    @IBAction func clearFieldsButton(_ sender: UIButton) {
    secondNumberTextField.text = ""
    answerLabel.text = ""
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        if secondNumberTextField.text! == ""
        {
            calculateButton.isEnabled = true
            clearButton.isEnabled = true
        }
        return true
    }

    @IBAction func clearOnPressed(_ sender: UIButton) {
        answerLabel.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerLabel.text = ""
        navigationItem.title = "\(divideEnteredNumber.number)"
    }
}
