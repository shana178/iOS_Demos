//
//  Lab2ViewController.swift
//  Shahanaa_Arulanandan_MT_8967513
//
//  Created by user239837 on 3/11/24.
//

import UIKit

class Lab2ViewController: UIViewController {
    var screenNumber = 0
    var resetvalue = 0
    var textnumber = 1
    @IBOutlet weak var number: UILabel!
    @IBAction func IncreaseNumber(_ sender: Any) {
            screenNumber += textnumber
            number.text=String(screenNumber)
    }
    
    @IBAction func DecreaseNumber(_ sender: Any) {
        screenNumber -= textnumber
        number.text=String(screenNumber)
    }
    @IBAction func stepbytwo(_ sender: Any) {
        textnumber = 2
    }
    
    @IBAction func Reset(_ sender: UIButton) {
        screenNumber=resetvalue
        number.text = String(resetvalue)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
