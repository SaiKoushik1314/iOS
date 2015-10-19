//
//  TemperatureViewController.swift
//  Assignment2
//
//  Created by Priyanka Zaveri on 10/19/15.
//  Copyright (c) 2015 Priyanka Zaveri. All rights reserved.
//

import UIKit

class TemperatureViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    // Outlets

    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var temperatureSegment: UISegmentedControl!
    @IBOutlet weak var temperaturePickerView: UIPickerView!
    
    // Variables
    
    var farenheit:[Int] = []
    var celsius:[Int] = []

    // Segment control changed
    
    @IBAction func tempIndexChanged(sender: AnyObject) {
        temperaturePickerView.reloadAllComponents()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in -129...134 {
            farenheit.append(i)
        }
        
        for j in -90...57 {
            celsius.append(j)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //
    // UIPickerViewDataSource methods
    //
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
        
    }
    
    func pickerView(pickerView: UIPickerView,
        numberOfRowsInComponent component: Int) -> Int {
            
            if temperatureSegment.selectedSegmentIndex == 0 {
                outputLabel.text=""
                    return farenheit.count
            } else {
                outputLabel.text=""
                return celsius.count
            }
    }
    
    //
    // UIPickerViewDelegate methods.
    //
    
    func pickerView(pickerView: UIPickerView,
        titleForRow row: Int,
        forComponent component: Int) -> String? {
            if temperatureSegment.selectedSegmentIndex == 0 {
            return "\(farenheit [row]) °F"
            } else {
                return "\(celsius [row]) °C"
            }
    }
    
    func pickerView(pickerView: UIPickerView,
        didSelectRow row: Int,
        inComponent component: Int) {
            
            var numberFormatter = NSNumberFormatter()
            numberFormatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
            
            if temperatureSegment.selectedSegmentIndex == 0 {
                var answer = ((farenheit[row] - 32) * 5/9)
                outputLabel.text = numberFormatter.stringFromNumber(answer)! + "°C"
            } else  {
                var answer = ((celsius[row] * 9/5) + 32)
                outputLabel.text = numberFormatter.stringFromNumber(answer)! + "°F"
            }
    }
    
}

