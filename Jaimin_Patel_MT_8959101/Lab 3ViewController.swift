//
//  Lab 3ViewController.swift
//  Jaimin_Patel_MT_8959101
//
//  Created by user237118 on 3/7/24.
//

import UIKit

class Lab_3ViewController: UIViewController {

    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var countryName: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var displayInfo: UITextView!
    @IBOutlet weak var invLable: UILabel!
    
    @IBAction func firstName(_ sender: UITextField) {
    }
    
    @IBAction func lastName(_ sender: UITextField) {
    }
    
    @IBAction func countryName(_ sender: UITextField) {
    }
    
    @IBAction func age(_ sender: UITextField) {
    }
    
    

    // Function to handle adding information
    @IBAction func addInfo(_ sender: Any) {
        // Check if any of the text fields are empty
        if(firstName.text == nil || firstName.text!.isEmpty || lastName.text == nil || lastName.text!.isEmpty || countryName.text == nil || countryName.text!.isEmpty || age.text == nil || age.text!.isEmpty){
            // Display error message if any field is empty
            invLable.isHidden=false
            invLable.text = "Please Enter Missing Data"
        } else {
            // If all fields are filled, call the function to display the information
            showInfo()
            // Hide the error label
            invLable.isHidden=false
            invLable.text = "Successfully Added Data"
        }
    }

    // Function to handle submitting information
    @IBAction func submitInfo(_ sender: Any){
        // Check if any of the text fields are empty
        if(firstName.text == nil || firstName.text!.isEmpty || lastName.text == nil || lastName.text!.isEmpty || countryName.text == nil || countryName.text!.isEmpty || age.text == nil || age.text!.isEmpty){
            // Display error message if any field is empty
            invLable.isHidden=false
            invLable.text = "Please Complete Missing Data..!!"
        } else {
            // If all fields are filled, display success message
            invLable.isHidden = false
            invLable.text = "Successfully Submitted Data"
        }
    }

    // Function to clear all fields
    @IBAction func clearInfo(_ sender: Any) {
        // Clear all text fields and display area
        firstName.text = ""
        lastName.text = ""
        countryName.text = ""
        age.text = ""
        displayInfo.text = ""
        // Hide the error label
        invLable.isHidden = true
    }

    // Function to display information
    func showInfo(){
        // Display the entered information
        displayInfo.text = "Full Name: \(firstName.text!) \(lastName.text!)\nCountry:\(countryName.text!)\nAge:\(age.text!)"
    }

    
    @objc func dismissKeyboard(){
            //Causes the view (or one of its embedded text fields) to resign the first responder status.
            view.endEditing(true)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        invLable.isHidden = true
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

                          //Uncomment the line below if you want the tap not not interfere and cancel other interactions.

                          tap.cancelsTouchesInView = false

                          view.addGestureRecognizer(tap)
    }

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


