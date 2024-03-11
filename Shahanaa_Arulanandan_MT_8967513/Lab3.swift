//
//  Lab3.swift
//  Shahanaa_Arulanandan_MT_8967513
//
//  Created by user239837 on 3/11/24.
//

import UIKit

class Lab3: UIViewController {

    
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var countryNameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var displayView: UITextView!
    @IBOutlet weak var invisibleLable1: UILabel!
       
    @IBAction func addButton(_ sender: UIButton) {
         
        guard let firstName = firstNameField.text, !firstName.isEmpty,
              let lastName = lastNameField.text, !lastName.isEmpty,
              let countryName = countryNameField.text, !countryName.isEmpty,
              let age = ageField.text, !age.isEmpty
            
        else{
            invisibleLable1.isHidden = false
            invisibleLable1.text = "Compelete the missing info!"
            return
        }
    let userInfo = "First Name: \(firstName)\nLast Name: \(lastName)\nCountry: \(countryName)\nAge: \(age)"
        displayView.backgroundColor = UIColor.white
    displayView.text = userInfo
    }
    @IBAction func submitbutton(_ sender: UIButton) {
        if !displayView.text.isEmpty{
            invisibleLable1.text = "Successfully submitted!"
            invisibleLable1.isHidden = false
        }else {
            invisibleLable1.text = "Compelete the missing info!"
            invisibleLable1.isHidden = false
        }
    }
    @IBAction func clearButton(_ sender: UIButton) {
        firstNameField.text = ""
        lastNameField.text = ""
        countryNameField.text = ""
        ageField.text = ""
        displayView.text = ""
        invisibleLable1.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        invisibleLable1.isHidden = true
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
