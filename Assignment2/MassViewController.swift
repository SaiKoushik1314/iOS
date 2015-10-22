//
//  MassViewController.swift
//  Assignment2
//
//  Priyanka Zaveri - Z1722111
//  Sai Koushik Chituluri  - Z1745655
//

import UIKit

class MassViewController: UIViewController {
    
    // Outlets

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var massLbsLabel: UILabel!
    @IBOutlet weak var massKgsLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    
    // Convert button
    
    @IBAction func convertButton(sender: AnyObject) {
        
        if var mass = inputTextField.text.toDouble() {
            var numberformatter = NSNumberFormatter()
            numberformatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
        
            if segmentedControl.selectedSegmentIndex == 0 {
                mass = mass/2.2046
            
            } else if segmentedControl.selectedSegmentIndex == 1 {
                mass = mass * 2.2046
            }
            
            displayLabel.text = numberformatter.stringFromNumber(mass)
        } else {
            let alert = UIAlertView(title: "Error", message: "Please enter a number", delegate: nil, cancelButtonTitle: "OK")
            alert.show()
        }
    }
    
    // Segment control changed
    
    @IBAction func indexChanged(sender: AnyObject) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            massLbsLabel.text = "Mass in Pounds"
            massKgsLabel.text = "Mass in Kilograms"
        case 1:
            massLbsLabel.text = "Mass in Kilograms"
            massKgsLabel.text = "Mass in Pounds"
        default:
            massLbsLabel.text = "Mass in Pounds"
            massKgsLabel.text = "Mass in Kilograms"

        }
    }
    
    // Clear button
    
    @IBAction func clearButton(sender: AnyObject) {
        
        inputTextField.text = ""
        displayLabel.text = ""
    }
    
    // Code to dismiss the keyboard

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent){
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

