//
//  ChooseFunctionViewController.swift
//  Divisibility
//
//  Created by student3 on 1/11/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class ChooseFunctionViewController: UIViewController {
    @IBOutlet weak var divisibilityButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var rootButton: UIButton!
    @IBOutlet weak var squareButton: UIButton!
    @IBOutlet weak var factorialButton: UIButton!
    @IBOutlet weak var modulusButton: UIButton!
    @IBOutlet weak var calculatorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let alert = UIAlertController(title: "Choose from Divisibility, Multiply, Root, or Square", message: "Other four are not completed yet", preferredStyle: UIAlertControllerStyle.alert)
//            let okayAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
//        alert.addAction(okayAction)
//        present(alert, animated: true, completion: nil)
        
        factorialButton.isEnabled = false
        modulusButton.isEnabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

}
