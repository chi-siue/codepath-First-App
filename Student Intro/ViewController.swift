//
//  ViewController.swift
//  Student Intro
//
//  Created by Chisom hilary Chidebe on 10/01/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func StepperdidChange(_ sender: UIStepper) { NumberofPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBOutlet weak var MorePetsSwitch: UISwitch!
    @IBOutlet weak var MorePetsStepper: UIStepper!
    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var SchoolNameTextField: UITextField!
    
    @IBOutlet weak var NumberofPetsLabel: UILabel!
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    
    @IBAction func IntroduceDidTapped(_ sender: UIButton) {
        
        // Let us create the title we have selected from the segmented control
        // In our example that ia whether it is first, second, third or fourth
        let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)
        
        //creating a constant of type string that holds an introduction. the introduction receives the values from the outlet connections.
        
        let introduction = "My name is\(FirstNameTextField.text!) \(LastNameTextField.text!) and i attend \(SchoolNameTextField.text!). I am currently in my \(year!) year and i own \(NumberofPetsLabel.text!) dogs. it is \(MorePetsSwitch.isOn) that i want more pets."
        
        print (introduction)
        
       //creates the alert where we pass in our message, which is our introduction.
       
        let alertcontroller = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
        alertcontroller.addAction(action)
        present (alertcontroller, animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

