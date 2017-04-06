//
//  SquareViewController.swift
//  Divisibility
//
//  Created by student3 on 12/1/16.
//  Copyright © 2016 John Hersey High School. All rights reserved.
//

import UIKit

class SquareViewController: UIViewController {
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBAction func calculateOnPressed(_ sender: UIButton)
    {
        print(calculateSquare())
    }
    
    func calculateSquare()
    {
        var product = Int(numberTextField.text!)! * Int(numberTextField.text!)!
        answerLabel.text = String(product)
        print (answerLabel)
    }
    
    @IBAction func clearLabel(_ sender: UIButton) {
        answerLabel.text = ""
        numberTextField.text = ""
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        answerLabel.text = ""
        numberTextField.text = ""
    }

}
