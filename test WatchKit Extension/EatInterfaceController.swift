//
//  DOBInterfaceController.swift
//  test WatchKit Extension
//
//  Created by Jerry Wang on 10/11/19.
//  Copyright © 2019 CDU IT Code Fair. All rights reserved.
//

import WatchKit
import Foundation

class EatInterfaceController: WKInterfaceController {

    @IBAction func SodaBTN() {
    }//soda can button
    
    @IBAction func CoffeBTN() {
    }//coffee button
    
    @IBAction func CupcakeBTN() {
    }//cupcakeBTN
    
    
    @IBAction func FrenchfriesBTN() {
    }//French Fries Button
    
    @IBAction func IcecreamBTN() {
    }//ice cream button
    
    
    @IBAction func pizzaBTN() {
    }//pizza button
    
    @IBAction func Hotdogbutton() {
    }//hotdog button
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
