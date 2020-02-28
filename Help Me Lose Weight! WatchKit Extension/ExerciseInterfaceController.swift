//
//  InterfaceController.swift
//  Help Me Lose Weight! WatchKit Extension
//
//  Created by Jerry Wang on 11/11/19.
//  Copyright © 2019 CDU IT Code Fair. All rights reserved.
//

import WatchKit
import Foundation


class ExerciseInterfaceController: WKInterfaceController {

    let userDefault = UserDefaults.standard
    
    var energyBalance: Int = 0
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        energyBalance = userDefault.integer(forKey: "energy_Balance")
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    //Actions happening when the buttons are
    
    @IBAction func swimButtonTouch() {
        energyBalance -= 200
        userDefault.set(energyBalance, forKey: "energy_Balance")
        self.pop()
    }
    
    @IBAction func pingPongButtonTouch() {
        energyBalance -= 300
        userDefault.set(energyBalance, forKey: "energy_Balance")
        self.pop()
    }
    
    @IBAction func tennisFriesButtonTouch() {
        energyBalance -= 400
        userDefault.set(energyBalance, forKey: "energy_Balance")
        self.pop()
    }
    
    @IBAction func cyclingButtonTouch() {
        energyBalance -= 500
        userDefault.set(energyBalance, forKey: "energy_Balance")
        self.pop()
    }
    
    @IBAction func footballButtonTouch() {
        energyBalance -= 600
        userDefault.set(energyBalance, forKey: "energy_Balance")
        self.pop()
    }
    
    @IBAction func weightliftingButtonTouch() {
        energyBalance -= 700
        userDefault.set(energyBalance, forKey: "energy_Balance")
        self.pop()
    }
    
    @IBAction func gymnasticsButtonTouch1() {
        energyBalance -= 800
        userDefault.set(energyBalance, forKey: "energy_Balance")
        self.pop()
    }
    
    @IBAction func runrButtonTouch() {
        energyBalance -= 1900
        userDefault.set(energyBalance, forKey: "energy_Balance")
        self.pop()
    }
    
}
