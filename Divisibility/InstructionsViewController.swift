//
//  InstructionsViewController.swift
//  Divisibility
//
//  Created by student3 on 1/19/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class InstructionsViewController: UIViewController {
    @IBOutlet weak var instructionsTextView: UITextView!

    let instructions = "Divisibility: enter a number, then choose to either calculate what numbers it is divisible by pressing 'Calculate' or go to 'Division Calculator' to divide the number by another specific number. 'Clear' button is used to clear all fields\n\nMultiply: enter two numbers, press 'Calculate' to find the product. Press 'Clear' to clear all fields\n\nRoot: enter a number and press 'Calculate' to determine whether or not the number is a perfect square. Press 'Clear' to clear all fields\n\nSquare: enter a number and press 'Calculate' to square the number. Press 'Clear' to clear all fields.\n\nThe following functions are still being created: \nFactorial: enter a number, press 'Calculate' to find the factorial of the number. Press 'Clear' to clear all fields.\n\nModulus: enter two numbers, press 'Calculate' to solve for the mod. Press 'Clear' to clear all fields.\n\nCalculator: functions like a standard calculator: select a number, then select a funtion, enter another number and then press '=' to solve. Press 'C' to clear fields."


    override func viewDidLoad() {
        super.viewDidLoad()
        instructionsTextView.text = instructions
        
            }

}
