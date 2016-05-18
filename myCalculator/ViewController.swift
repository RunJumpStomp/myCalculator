//
//  ViewController.swift
//  myCalculator
//
//  Created by William Fairchild on 5/17/16.
//  Copyright © 2016 RunJumpStomp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Global Variables
    
    var num1 : Double = 0.0
    var num2 : Double = 0.0
    var str1 : String = ""
    var str2 : String = ""
    var num1Gen : String = ""
    var num2Gen : String = ""
    var answer: Double = 0.0
    var currentOperation: String = ""
    //Outlets
    
    @IBOutlet weak var screenText: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Actions-Functions
    
    @IBAction func onPressButton0(sender: UIButton) {
        appendNumber("0")
        updateScreen()
    }

    @IBAction func onPressButton1(sender: UIButton) {
        appendNumber("1")
        updateScreen()
    }
    
    @IBAction func onPressButton2(sender:UIButton) {
        appendNumber("2")
        updateScreen()
    }
    
    @IBAction func onPressButton3(sender:UIButton) {
        appendNumber("3")
        updateScreen()
    }
    
    @IBAction func onPressButton4(sender:UIButton) {
        appendNumber("4")
        updateScreen()
    }
    
    @IBAction func onPressButton5(sender:UIButton) {
        appendNumber("5")
        updateScreen()
    }
    
    @IBAction func onPressButton6(sender:UIButton) {
        appendNumber("6")
        updateScreen()
    }
    
    @IBAction func onPressButton7(sender:UIButton) {
        appendNumber("7")
        updateScreen()
    }
    
    @IBAction func onPressButton8(sender:UIButton) {
        appendNumber("8")
        updateScreen()
    }
    
    @IBAction func onPressButton9(sender:UIButton) {
        appendNumber("9")
        updateScreen()
    }
    
    @IBAction func onPressButtonDecimal(sender:UIButton) {
        //Create an if statement to check if there is already a decimal in the number.
        if screenText.text!.containsString(".") {
        } else {
        
            appendNumber(".")
            updateScreen()
        }
    }
    
    @IBAction func onPressButtonEqual(sender:UIButton) {
        if currentOperation == "addition" {
            num1 = num1 + num2
            updateScreen()
        } else if currentOperation == "subtraction" {
            num1 = num2 - num1
            updateScreen()
        } else if currentOperation == "multiplication" {
            num1 = num1 * num2
            updateScreen()
        } else if currentOperation == "division" {
            num1 = num2 / num1
            updateScreen()
        }
    }
    
    @IBAction func onPressButtonAddition(sender:UIButton) {
        num2 = num1
        num1 = 0
        screenText.text = ""
        num1Gen = ""
        currentOperation = "addition"
        updateScreen()
    }
    
    @IBAction func onPressButtonSubtraction(sender:UIButton) {
        num2 = num1
        num1 = 0
        screenText.text = ""
        num1Gen = ""
        currentOperation = "subtraction"
        updateScreen()
        
    }
    
    @IBAction func onPressButtonMuliplication(sender:UIButton) {
        num2 = num1
        num1 = 0
        screenText.text = ""
        num1Gen = ""
        currentOperation = "multiplication"
        updateScreen()
        
    }
    
    @IBAction func onPressButtonDivision(sender:UIButton) {
        num2 = num1
        num1 = 0
        screenText.text = ""
        num1Gen = ""
        currentOperation = "division"
        updateScreen()
        
    }
    
    @IBAction func onPressButtonClear(sender:UIButton) {
        num1 = 0.0
        num2 = 0.0
        str1 = ""
        str2 = ""
        num1Gen = ""
        num2Gen = ""
        answer = 0.0
        currentOperation = ""
        updateScreen()
    }
    
    //This builds the number to display on screenText
    func appendNumber(num: String) {
        num1Gen += num
        num1 = Double(num1Gen)!
        
    }
    
    //This function updates the "screen" that the user sees.
    
    func updateScreen() {
        screenText.text = String(num1)
    }
    
}

