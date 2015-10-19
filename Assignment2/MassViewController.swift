//
//  MassViewController.swift
//  Assignment2
//
//  Created by Priyanka Zaveri on 10/19/15.
//  Copyright (c) 2015 Priyanka Zaveri. All rights reserved.
//

import UIKit

class MassViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var massLbsLabel: UILabel!
    @IBOutlet weak var massKgsLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func convertButton(sender: AnyObject) {
        
        if var number = inputTextField.text.toDouble() {
            var numberformatter = NSNumberFormatter()
            numberformatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
        
            if segmentedControl.selectedSegmentIndex == 0 {
                var pounds = (inputTextField.text as NSString).doubleValue
                var kilos = pounds/2.2046
                displayLabel.text = kilos.description
            
            } else if segmentedControl.selectedSegmentIndex == 1 {
                var kilos = (inputTextField.text as NSString).doubleValue
                var pounds = kilos * 2.2046
                displayLabel.text = pounds.description
            }
        } else {
            let alert = UIAlertView(title: "Error", message: "Please enter a number", delegate: nil, cancelButtonTitle: "OK")
            alert.show()
        }
    }
    
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
    
    @IBAction func clearButton(sender: AnyObject) {
        
        inputTextField.text = ""
        displayLabel.text = ""
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

