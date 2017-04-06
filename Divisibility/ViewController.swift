//
//  ViewController.swift
//  Divisibility
//
//  Created by student3 on 11/7/16.
//  Copyright © 2016 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var enterNumberTextField: UITextField!
    @IBOutlet weak var twoLabel: UILabel!
    @IBOutlet weak var threeLabel: UILabel!
    @IBOutlet weak var fourLabel: UILabel!
    @IBOutlet weak var fiveLabel: UILabel!
    @IBOutlet weak var sixLabel: UILabel!
    @IBOutlet weak var sevenLabel: UILabel!
    @IBOutlet weak var eightLabel: UILabel!
    @IBOutlet weak var nineLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var toDivisionCalculator: UIBarButtonItem!
    
    
    
    var divideNumber = NumberToDivide()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let nvc = segue.destination as! DivideCalculatorViewController
        divideNumber.number = Double(enterNumberTextField.text!)!
        nvc.divideEnteredNumber = divideNumber
    }

    @IBAction func toDivisionCalculator(_ sender: UIButton) {
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        twoLabel.text = ""
        threeLabel.text = ""
        fourLabel.text = ""
        fiveLabel.text = ""
        sixLabel.text = ""
        sevenLabel.text = ""
        eightLabel.text = ""
        nineLabel.text = ""
        calculateButton.isEnabled = false
        clearButton.isEnabled = false
        toDivisionCalculator.isEnabled = false
        
        let alert = UIAlertController(title: "Enter a number", message: "Then calulate or go to division calculator", preferredStyle: UIAlertControllerStyle.alert)
        let okayAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
        alert.addAction(okayAction)
        present(alert, animated: true, completion: nil)
    }
    
    func divisibleByTwo() {
        if Int(enterNumberTextField.text!)! % 2 == 0
        {
            return twoLabel.text = "yes, \(Int(enterNumberTextField.text!)! / 2) times"
        }
        else
        {
            return twoLabel.text = "no"
        }
        }
    
    func divisibleByThree() {
        if Int(enterNumberTextField.text!)! % 3 == 0
        {
            return threeLabel.text = "yes, \(Int(enterNumberTextField.text!)! / 3) times"
        }
        else
        {
            return threeLabel.text = "no"
        }
    }
    func divisibleByFour() {
        if Int(enterNumberTextField.text!)! % 4 == 0
        {
            return fourLabel.text = "yes, \(Int(enterNumberTextField.text!)! / 4) times"
        }
        else
        {
            return fourLabel.text = "no"
        }
    }
    func divisibleByFive() {
        if Int(enterNumberTextField.text!)! % 5 == 0
        {
            return fiveLabel.text = "yes, \(Int(enterNumberTextField.text!)! / 5) times"
        }
        else
        {
            return fiveLabel.text = "no"
        }
    }
    func divisibleBySix() {
        if Int(enterNumberTextField.text!)! % 6 == 0
        {
            return sixLabel.text = "yes, \(Int(enterNumberTextField.text!)! / 6) times"
        }
        else
        {
            return sixLabel.text = "no"
        }
    }
    func divisibleBySeven() {
        if Int(enterNumberTextField.text!)! % 7 == 0
        {
            return sevenLabel.text = "yes, \(Int(enterNumberTextField.text!)! / 7) times"
        }
        else
        {
            return sevenLabel.text = "no"
        }
    }
    func divisibleByEight() {
        if Int(enterNumberTextField.text!)! % 8 == 0
        {
            return eightLabel.text = "yes, \(Int(enterNumberTextField.text!)! / 8) times"
        }
        else
        {
            return eightLabel.text = "no"
        }
    }
    func divisibleByNine() {
        if Int(enterNumberTextField.text!)! % 9 == 0
        {
            return nineLabel.text = "yes, \(Int(enterNumberTextField.text!)! / 9) times"
        }
        else
        {
            return nineLabel.text = "no"
        }
    }

    @IBAction func calculateOnPressed(_ sender: UIButton) {
        print(divisibleByTwo())
        print(divisibleByThree())
        print(divisibleByFour())
        print(divisibleByFive())
        print(divisibleBySix())
        print(divisibleBySeven())
        print(divisibleByEight())
        print(divisibleByNine())
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        if enterNumberTextField.text! == ""
        {
            calculateButton.isEnabled = true
            clearButton.isEnabled = true
            toDivisionCalculator.isEnabled = true
        }
        return true
    }
    
    func clearOnPressed(_ sender: UIButton) {
        enterNumberTextField.text = ""
        twoLabel.text = ""
        threeLabel.text = ""
        fourLabel.text = ""
        fiveLabel.text = ""
        sixLabel.text = ""
        sevenLabel.text = ""
        eightLabel.text = ""
        nineLabel.text = ""
    }
    
}
