//
//  GameViewController.swift
//  Divisibility
//
//  Created by student3 on 1/12/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    @IBOutlet weak var labelSeven: UILabel!
    @IBOutlet weak var labelEight: UILabel!
    @IBOutlet weak var labelNine: UILabel!
    let numbers: String = "0123456789"
    var counter: Int = 0
    var currentNumber: Character!
    var labelArray: [UILabel] = [UILabel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getAndSetNumbers()
        labelArray = [labelOne, labelTwo, labelThree, labelFour, labelFive, labelSix, labelSeven, labelEight, labelNine]
    }

    @IBAction func whenTapped(_ sender: UITapGestureRecognizer) {
        let selectedPoint = sender.location(in: self.view)
        for currentLabel in labelArray
        {
            if currentLabel.frame.contains(selectedPoint)
            {
                currentLabel.text = String(currentNumber)
            }
        }
        counter += 1
        if counter == 9
        {
            counter = resetCounter()
        }
        getAndSetNumbers()
        currentNumber = Character(numbers[counter])
    }
    
    func getAndSetNumbers()
    {
        currentNumber = numbers[numbers.index(numbers.startIndex, offsetBy: counter)]
    }

    func resetCounter() -> Int
    {
        return 0
    }
}
