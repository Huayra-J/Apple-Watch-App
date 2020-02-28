//
//  InterfaceController.swift
//  Help Me Lose Weight! WatchKit Extension
//
//  Created by Jerry Wang on 11/11/19.
//  Copyright © 2019 CDU IT Code Fair. All rights reserved.
//

import WatchKit
import Foundation


class RecordInterfaceController: WKInterfaceController {

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
    
    @IBAction func backButtonTouch() {
        self.pop()// help to show the specific view controller , in this case a view controler with updated info
    }
    

}
