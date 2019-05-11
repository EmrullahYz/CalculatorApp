//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Emrullah Yılmaz on 15.01.2019.
//  Copyright © 2019 Emrullah Yılmaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var firstNumberTxt: UITextField!
    @IBOutlet weak var secondNumberTxt: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.text = "Res "
        
        self.firstNumberTxt.delegate = self
        self.secondNumberTxt.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //This is for the keyboard to GO AWAYY !! when user clicks "Return" key  on the keyboard
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    @IBAction func plusBtn(_ sender: Any) {
        if let firstNumber = Int(firstNumberTxt.text!) {
            if let secondNumber = Int(secondNumberTxt.text!) {
                result = firstNumber + secondNumber
                resultLabel.text = "R: \(String(result))"
            }
        }
    }
    
    @IBAction func minusBtn(_ sender: Any) {
        if let firstNumber = Int(firstNumberTxt.text!) {
            if let secondNumber = Int(secondNumberTxt.text!) {
                result = firstNumber - secondNumber
                resultLabel.text = "R: \(String(result))"
            }
        }
    }
    @IBAction func multiplyBtn(_ sender: Any) {
        if let firstNumber = Int(firstNumberTxt.text!) {
            if let secondNumber = Int(secondNumberTxt.text!) {
                result = firstNumber * secondNumber
                resultLabel.text = "R: \(String(result))"
            }
        }
    }
    
    @IBAction func divideBtn(_ sender: Any) {
        if let firstNumber = Double(firstNumberTxt.text!) {
            if let secondNumber = Double(secondNumberTxt.text!) {
                let newresult = firstNumber / secondNumber
                resultLabel.text = "R: \(String(newresult))"
            }
        }
    }
    @IBAction func remainderBtn(_ sender: Any) {
        if let firstNumber = Int(firstNumberTxt.text!) {
            if let secondNumber = Int(secondNumberTxt.text!) {
                result = firstNumber % secondNumber
                resultLabel.text = "R: \(String(result))"
            }
        }
    }
}

