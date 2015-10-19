//
//  UpsideDownSupport.swift
//  Assignment2
//
//  Created by Priyanka Zaveri on 10/19/15.
//  Copyright (c) 2015 Priyanka Zaveri. All rights reserved.
//

import UIKit

class UpsideDownSupport: UITabBarController {
    
    //
    // Code to support Upside Down orientation.
    //
    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.All.rawValue)
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
   
}
