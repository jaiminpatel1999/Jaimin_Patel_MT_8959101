//
//  CanadaViewController.swift
//  Jaimin_Patel_MT_8959101
//
//  Created by user237118 on 3/6/24.
//

import UIKit

class CanadaViewController: UIViewController {

    @IBOutlet weak var cityImage: UIImageView!
    @IBOutlet weak var enterCityName: UITextField!
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func enterCityName(_ sender: Any) {
    }
    @IBAction func findMyTown(_ sender: Any) {
        // Check if the text field is not empty
        if let text = enterCityName.text, !text.isEmpty {
            // Convert the entered text to lowercase for case-insensitive comparison
                let lowercasedText = text.lowercased()
            // Check the entered city name and display the corresponding image
                switch lowercasedText {
                case "calgary":
                    label.isHidden = true
                    cityImage.image = UIImage(named: "Calgary")
                    
                case "halifax":
                    label.isHidden = true
                    cityImage.image = UIImage(named: "Halifax")
                    
                case "montreal":
                    label.isHidden = true
                    cityImage.image = UIImage(named: "Montreal")
                    
                case "toronto":
                    label.isHidden = true
                    cityImage.image = UIImage(named: "Toronto")
                    
                case "vancouver":
                    label.isHidden = true
                    cityImage.image = UIImage(named: "Vancouver")
                    
                case "winnipeg":
                    label.isHidden = true
                    cityImage.image = UIImage(named: "Winnipeg")
                    
                default:
                    // If the entered city name does not match any of the cases above, show an error message
                    label.isHidden = false
                    label.textColor = UIColor.red
                    label.text = "Enter Valid City Name!"
                    
                }
            } else {
                // If the text field is empty, show a message prompting the user to enter a city name
                label.isHidden = false
                label.textColor = UIColor.red
                label.text = "Please Enter City Name!"
               
            }
    }
    
    @objc func dismissKeyboard(){
            //Causes the view (or one of its embedded text fields) to resign the first responder status.
            view.endEditing(true)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.isHidden = true
        
        cityImage.image = UIImage(named: "Canada")
        
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

                          //Uncomment the line below if you want the tap not not interfere and cancel other interactions.

                          tap.cancelsTouchesInView = false

                          view.addGestureRecognizer(tap)

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
