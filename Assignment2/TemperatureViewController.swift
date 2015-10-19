//
//  TemperatureViewController.swift
//  Assignment2
//
//  Created by Priyanka Zaveri on 10/19/15.
//  Copyright (c) 2015 Priyanka Zaveri. All rights reserved.
//

import UIKit

class TemperatureViewController: UIViewController {


    @IBOutlet weak var temperatureSegment: UISegmentedControl!
    @IBAction func tempIndexChanged(sender: AnyObject) {
    }
    @IBOutlet weak var temperaturePickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

