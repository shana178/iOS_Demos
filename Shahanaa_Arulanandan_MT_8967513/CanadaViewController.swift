//
//  ViewController.swift
//  Shahanaa_Arulanandan_MT_8967513
//
//  Created by user239837 on 3/8/24.
//

import UIKit

class CanadaViewController: UIViewController {
    //this is for the initial image and color and made as default
    let defaultCity = UIImage(named: "Canada")
    let defaultColor = UIColor(red: 155/255, green: 216/255, blue: 178/255, alpha: 1.0)
    //calling the cities name and their image
    let cities = [
        "toronto":UIImage(named: "Toronto"),
        "vancouver":UIImage(named: "Vancouver"),
        "montreal":UIImage(named: "Montreal"),
        "calgary":UIImage(named: "Calgary"),
        "winnipeg":UIImage(named: "Winnipeg")
    ]
    //calling the background color for the each city
    let citiesColor = [
        "toronto":UIColor(red: 173.0/255, green: 216/255, blue: 232/255, alpha: 1.0),
        "vancouver":UIColor(red: 0/255, green: 128/255, blue: 128/255, alpha: 1.0),
        "montreal":UIColor(red: 245/255, green: 172/255, blue: 69/255, alpha: 1.0),
        "calgary":UIColor(red: 215/255, green: 186/255, blue: 204/255, alpha: 1.0),
        "winnipeg":UIColor(red: 205/255, green:204/255, blue: 202/2, alpha: 1.0)
    ]
        //conecting
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cityName: UITextField!
    @IBOutlet weak var errorField: UILabel!
    @IBAction func cityButton(_ sender: Any) {
        //for typing lowercase and city image view
        let cityname = cityName.text?.lowercased() ?? ""
        //display the image of the city and the change the background color
        if let image = cities[cityname]{
            imageView.image = image
            view.backgroundColor = citiesColor[cityname]
        }else{
            imageView.image = defaultCity
            view.backgroundColor = defaultColor
            //showing the error massage field
            errorField.isHidden = false
            //display the massage in the errorField table
            errorField.text = "City is not Found"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //to hide the lable
        errorField.isHidden = true
        // Do any additional setup after loading the view.
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

                  
                tap.cancelsTouchesInView = false

                   view.addGestureRecognizer(tap)

            }
    //dismiss the keyboard
            @objc func dismissKeyboard() {
                view.endEditing(true)

            
    
    }


}

