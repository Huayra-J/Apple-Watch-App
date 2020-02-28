//
//  InterfaceController.swift
//  Help Me Lose Weight! WatchKit Extension
//
//  Created by Jerry Wang on 11/11/19.
//  Copyright © 2019 CDU IT Code Fair. All rights reserved.
//

import WatchKit
import Foundation


class GoalInterfaceController: WKInterfaceController {
    
    //body picker and days picker
    
    @IBOutlet weak var bodyWeightPicker: WKInterfacePicker!
    @IBOutlet weak var daysPicker: WKInterfacePicker!
    
    
    //intital set up for the vaibales and the user defautls help the app to start up with users default database
    let userDefault = UserDefaults.standard
    var bodyWeight: Int = 1
    var day: Int = 1
    var totalAmount: Int = 0
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        //Preset arrays for the varibles to be used to select the goal
        var bodyWeightArray  : Array<Any> = []
        let bodyWeightLoad : Array<Any> = ["01","02","03","04","05","06","07","08","09","10"]
        
        for (id,_) in bodyWeightLoad.enumerated(){
              let pickerItem = WKPickerItem()
               pickerItem.title = bodyWeightLoad[id] as? String
               bodyWeightArray.append(pickerItem)
        }
        
        bodyWeightPicker.setItems(bodyWeightArray as? [WKPickerItem])
        
        var dayArray  : Array<Any> = []
        let dayLoad : Array<Any> = ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"]
        
       for (id,_) in dayLoad.enumerated(){
             let pickerItem = WKPickerItem()
              pickerItem.title = dayLoad[id] as? String
              dayArray.append(pickerItem)
       }
        
        daysPicker.setItems(dayArray as? [WKPickerItem])
    }
    
    
    
    @IBAction func bodyWeight(_ value: Int) {
        bodyWeight = value+1
        print(bodyWeight)
    }
    
    @IBAction func days(_ value: Int) {
        day = value+1
        print(day)
    }
    
    
    //Button to generate the report on the next view
    @IBAction func nextButtonTouch() {
        totalAmount = Int((29400 * bodyWeight) / day)
        print(totalAmount)
        userDefault.set(totalAmount, forKey: "energy_Balance") //creates the default database
        pushController(withName: "DashInterfaceController", context: nil)
        
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
