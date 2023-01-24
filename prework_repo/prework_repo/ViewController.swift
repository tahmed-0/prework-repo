//
//  ViewController.swift
//  prework_repo
//
//  Created by Ahmed on 1/23/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var schoolName: UITextField!
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var petsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    
    
   
    
    //Increase or decrease number of pets
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    
    
    
    
    @IBAction func introduce(_ sender: Any) {
        
        
        //first, second, third or forth
        let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)
              
        
        let introduction = "My name is \(firstName.text!) \(lastName.text!) and I attend \(schoolName.text!).  I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs.  It is \(morePetsSwitch.isOn) that I want more pets."
             
             
              
        print(introduction)
        
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
               
        //  pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
               
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
               
        present(alertController, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

