//
//  Lab 2ViewController.swift
//  Jaimin_Patel_MT_8959101
//
//  Created by user237118 on 3/7/24.
//

import UIKit

class Lab_2ViewController: UIViewController {

    
    
    var count = 0
    var flagNumber = 0
@IBOutlet weak var label: UILabel!

@IBAction func dec(_ sender: Any) {
    // Check if flagNumber is 0
        if (flagNumber == 0) {
            count -= 1 // Decrease count by 1
            label.text = String(count) // Update label with new count
        } else if (flagNumber == 1) {
            count -= 2 // Decrease count by 2 if flagNumber is 1
            label.text = String(count) // Update label with new count
        }
    }

    // Increase button action
    @IBAction func inc(_ sender: Any) {
        // Check if flagNumber is 0
        if (flagNumber == 0) {
            count += 1 // Increase count by 1
            label.text = String(count) // Update label with new count
        } else if (flagNumber == 1) {
            count += 2 // Increase count by 2 if flagNumber is 1
            label.text = String(count) // Update label with new count
        }
    }

    // Reset button action
    @IBAction func reset(_ sender: Any) {
        flagNumber = 0 // Reset flagNumber to 0
        count = 0 // Reset count to 0
        label.text = String(count) // Update label to display 0
    }

    // Step button action
    @IBAction func step(_ sender: Any) {
        flagNumber = 1 // Set flagNumber to 1, indicating a different increment/decrement step
    }

    
    @objc func dismissKeyboard(){
            //Causes the view (or one of its embedded text fields) to resign the first responder status.
            view.endEditing(true)
        }
    override func viewDidLoad() {
        super.viewDidLoad()

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
