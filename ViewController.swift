//
//  ViewController.swift
//  jveit-HW3Calculator
//
//  Created by Jeffrey Veit on 1/19/21.
//  DePaul CSC 471 HW#3
//

import UIKit

class ViewController: UIViewController {
    
    var numberOne: Int = 0
    var numberTwo: Int = 0
    var cont: Bool = false
    var x: Double?
    var y: Int!
    
    
    

    @IBOutlet weak var label: UILabel!
    
    // Callback method for pressing any number and displaying in label
    @IBAction func numberPressed(_ sender: UIButton)
    {
        
        if let numeral = sender.currentTitle
        {
            
            if cont
            {
                label.text = label.text! + numeral
            }
            
            else
            {
                label.text = "\(numeral)"
                cont = true
            }
        }
        
        
        
        
    }
    
    // Addition button that saves first number for equation
    @IBAction func additionButton(_ sender: UIButton)
    {
        numberOne = Int(label.text!)!
        cont = false
    }
    
    // Equals button that add first and second number and displays result
    @IBAction func computeButton(_ sender: UIButton)
    {
        var answer: Int = 0
        numberTwo = Int(label.text!)!
        answer = numberOne + numberTwo
        
        label.text = "\(answer)"
        cont = false
    }
    
    // Resets all variables to 0 as well as label
    @IBAction func resetButton(_ sender: UIButton)
    {
        numberOne = 0
        numberTwo = 0
        label.text = "0"
        cont = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

