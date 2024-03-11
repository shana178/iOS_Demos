//
//  QuadraticViewController.swift
//  Shahanaa_Arulanandan_MT_8967513
//
//  Created by user239837 on 3/10/24.
//

import UIKit

class QuadraticViewController: UIViewController {
//connecting
    @IBOutlet weak var fieldA: UITextField!
    @IBOutlet weak var fieldB: UITextField!
    @IBOutlet weak var fieldC: UITextField!
    @IBOutlet weak var massageLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let textA = fieldA.text!
        let textB = fieldB.text!
        let textC = fieldC.text!
        //error massage for wrong input for A,B and C
        guard let a = Double(textA) else{
            massageLabel.text = "The value you entered for A is invalid."
            resultLabel.isHidden = true
            return
        }
        
        guard let b = Double(textB) else{
            massageLabel.text = " The value you entered for B is invalid."
            resultLabel.isHidden = true
            return
        }
        guard let c = Double(textC) else{
            massageLabel.text = "The value you entered for C is invalid."
            resultLabel.isHidden = true
            return
        }
        //calculation part
            let discrimianat = b * b - 4 * a * c
            if discrimianat > 0 {
                let rootOne = (-b + sqrt(discrimianat)) / (2 * a)
                let rootTwo = (-b - sqrt(discrimianat)) / (2 * a)
                //display the calculation
                resultLabel.text = "\(rootOne),\(rootTwo)"
                //display the massage
                massageLabel.text = "There are Two values for X"
                resultLabel.isHidden = true
            }else if discrimianat == 0 {
                let root =  (-b)/(2 * a)
                //display the calculation
                resultLabel.text = "\(root)"
                //display the massage
                massageLabel.text = "there is only one value for X"
                resultLabel.isHidden = true
            }else{
                resultLabel.isHidden = true
                massageLabel.text = "There are no results since the discriminant is less than zero."
                massageLabel.sizeToFit()
                view.addSubview(massageLabel)
                resultLabel.isHidden = true
            }
        // show the massage label
        
        massageLabel.isHidden = false
    }
    @IBAction func clearButton(_ sender: Any) {
        //for clear the data
        fieldA.text = ""
        fieldB.text = ""
        fieldC.text = ""
        massageLabel.text = "Enter a value for A and B to find C"
        //hide the massage label and output label
        massageLabel.isHidden = false
        resultLabel.isHidden = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //hide the massage label and output label
        massageLabel.isHidden = true
        resultLabel.isHidden = true
        // Set the keyboard type for each field to numbers and punctuation
            fieldA.keyboardType = .numbersAndPunctuation
            fieldB.keyboardType = .numbersAndPunctuation
            fieldC.keyboardType = .numbersAndPunctuation
            
            // first text field automatically selected and the keyboard displayed
            fieldA.becomeFirstResponder()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

                  
                tap.cancelsTouchesInView = false

                   view.addGestureRecognizer(tap)

            }
    //dismiss the keyboard
            @objc func dismissKeyboard() {
                view.endEditing(true)

            
    }
}
