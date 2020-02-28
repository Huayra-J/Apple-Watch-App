//
//  InterfaceController.swift
//  Help Me Lose Weight! WatchKit Extension
//
//  Created by Jerry Wang on 11/11/19.
//  Copyright © 2019 CDU IT Code Fair. All rights reserved.
//

import WatchKit
import Foundation


class DashInterfaceController: WKInterfaceController {

    var energyBalance = 0
    let userDefault = UserDefaults.standard //allow to keep the default datatabase.
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        energyBalance = userDefault.integer(forKey: "energy_Balance")
        UIRefresh()
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    //labels in the page
    @IBOutlet weak var energyLabel: WKInterfaceLabel!
    
    @IBOutlet weak var eatLabel: WKInterfaceLabel!
    
    @IBAction func button() {
        UIRefresh()
    }
    
    //function to update the label on the top of these view
    
    func UIRefresh() {
        if energyBalance > 0 {
            eatLabel.setText("You need exercise to burn")
        }
        if energyBalance < 0 {
            eatLabel.setText("Goal Achived! You can have more food")
        }
        energyLabel.setText("\(abs(energyBalance))")
    }
    
}
