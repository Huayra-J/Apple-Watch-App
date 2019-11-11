//
//  DOBInterfaceController.swift
//  test WatchKit Extension
//
//  Created by Jerry Wang on 10/11/19.
//  Copyright © 2019 CDU IT Code Fair. All rights reserved.
//

import WatchKit
import Foundation

class ExerciseInterfaceController: WKInterfaceController {

    @IBAction func swimBTN() {
    }
    
    
    @IBAction func tttennisBTN() {
    }//table tennis
    
    
    @IBAction func tennisBTN() {
    }//tennis
    
    
    
    @IBAction func cycling() {
    }//cycling
    
    
    @IBAction func soccerBTN() {
    }//soccer button
    
    @IBAction func lifting() {
    }
    
    @IBAction func gynastic() {
    }
    
    @IBAction func running() {
    }
    
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
