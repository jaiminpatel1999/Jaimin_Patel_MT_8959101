//
//  Quadratic.swift
//  Milankumar_Devani_MT_8881091
//
//  Created by user222782 on 11/5/23.
//

import UIKit

class Quadratic_ViewController: UIViewController {

    @IBOutlet weak var inputA: UITextField!
    @IBOutlet weak var inputB: UITextField!
    @IBOutlet weak var inputC: UITextField!
    @IBOutlet weak var errorMessage: UILabel!
    
    override func viewDidLoad() {
        showErrorMessage("")
        super.viewDidLoad()
    }
    
    // Function to display error message
    func showErrorMessage(_ message: String) {
        errorMessage.textColor = UIColor.red
        errorMessage.text = message
    }

    // Function to show calculated result
    func showResult(_ message: String) {
        errorMessage.textColor = UIColor.black
        errorMessage.text = message
    }

    @IBAction func calculate(_ sender: UIButton) {
        // Validation to ensure the user entered values for A, B, and C
        guard let textA = inputA.text, let textB = inputB.text, let textC = inputC.text,
              let a = Double(textA), let b = Double(textB), let c = Double(textC) else {
            showErrorMessage("Enter a value for A, B, and C to find X.")
            return
        }

        // Check if input A is zero
        if a == 0 {
            showErrorMessage("The value you entered for A is invalid.")
            return
        }
        
        // Check if input B is zero
        if b == 0 {
            showErrorMessage("The value you entered for B is invalid.")
            return
        }
        
        // Check if input C is zero
        if c == 0 {
            showErrorMessage("The value you entered for C is invalid.")
            return
        }

        // Calculate the discriminant (b^2 - 4ac)
        let discriminant = b * b - 4 * a * c

        // Determine the nature of roots based on the discriminant
        if discriminant < 0 {
            showErrorMessage("There are no results since the discriminant is less than zero.")
        } else {
            // Calculate the roots based on the nature of the discriminant
            let result = calculateEquationFromInputs(a: a, b: b, c: c)
            // Display the results based on the nature of roots
            if discriminant == 0 {
                showResult("There is only one value for X: \(result.0)")
            } else {
                showResult("There are two values for X: \(result.0) and \(result.1)")
            }
        }
    }

    // Calculate the roots of the quadratic equation
    func calculateEquationFromInputs(a: Double, b: Double, c: Double) -> (Double, Double) {
        let discriminant = b * b - 4 * a * c

        if discriminant > 0 {
            // Two distinct real roots calculation
            let x1 = (-b + sqrt(discriminant)) / (2 * a)
            let x2 = (-b - sqrt(discriminant)) / (2 * a)
            return (x1, x2)
        } else if discriminant == 0 {
            // One real root calculation
            let x = -b / (2 * a)
            return (x, x)
        } else {
            // No real roots calculation
            return (0.0, 0.0)
        }
    }
    
    // Function to clear all inputs and error messages
    @IBAction func clear(_ sender: UIButton) {
        inputA.text = ""
        inputB.text = ""
        inputC.text = ""
        errorMessage.text = ""
    }
        
    // Function to dismiss the keyboard
    @IBAction func keyboardDismiss(_ sender: Any) {
        inputA.resignFirstResponder()
        inputB.resignFirstResponder()
        inputC.resignFirstResponder()
    }
}
