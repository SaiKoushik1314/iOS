//
//  UpsideDownSupport.swift
//  Assignment2
//
//  Priyanka Zaveri - Z1722111
//  Sai Koushik Chituluri  - Z1745655
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
