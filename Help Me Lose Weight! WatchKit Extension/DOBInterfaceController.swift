//
//  InterfaceController.swift
//  Help Me Lose Weight! WatchKit Extension
//
//  Created by Jerry Wang on 11/11/19.
//  Copyright © 2019 CDU IT Code Fair. All rights reserved.
//

import WatchKit
import Foundation


class DOBInterfaceController: WKInterfaceController {

    
     // all the Pickers and buttons
       @IBOutlet weak var monthPicker: WKInterfacePicker!
       @IBOutlet weak var dayPicker: WKInterfacePicker!
       @IBOutlet weak var yearPicker: WKInterfacePicker!
       @IBOutlet weak var monthLabel: WKInterfaceLabel!
       @IBOutlet weak var dayLabel: WKInterfaceLabel!
       @IBOutlet weak var yearLabel: WKInterfaceLabel!
       @IBOutlet weak var dateButton: WKInterfaceButton!
    
    // Preset arrays for the varibles set for the calendar
    var MonthArray : Array<Any> = []
    var MonthLoad : Array<Any> = ["JAN","FEB","MAR","APR","MAY","JUN","JUL","AUG","SEP","OCT","NOV","DEC"]
    var MonthNumLoad :  Array<Any> = ["01","02","03","04","05","06","07","08","09","10","11","12"]
    var DayArray  : Array<Any> = []
    var DayLoad : Array<Any> = ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"]
    var YearArray : Array<Any> = []
    var YearLoad : Array<Any> = ["1990","1991","1992","1993","1994","1995","1996","1997","1998","1999","2000","2001","2002","2003","2004","2005"
        ,"2006","2007","2008","2009"]
    
    // Delcare the variables
    var month = ""
    var day = ""
    var year = ""
    var totalDate = ""
    var getMonth = "01"
    var getDay = "01"
    var getYear = "2015"
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configuration of the picker
        
        for (id,_) in DayLoad.enumerated(){
               let pickerItem = WKPickerItem()
                pickerItem.title = DayLoad[id] as? String
                DayArray.append(pickerItem)
            }

            for (id,_) in MonthLoad.enumerated(){
                let pickerItem = WKPickerItem()
                pickerItem.title = MonthNumLoad[id] as? String
                MonthArray.append(pickerItem)
            }

            for (id,_) in YearLoad.enumerated(){
                let pickerItem = WKPickerItem()
                pickerItem.title = YearLoad[id] as? String
                YearArray.append(pickerItem)
            }
            
        
            //Getting the value of from the picker and show
        
            dayPicker.setItems(DayArray as? [WKPickerItem])
            monthPicker.setItems(MonthArray as? [WKPickerItem])
            yearPicker.setItems(YearArray as? [WKPickerItem])

            let date = Date()
            let formatter = DateFormatter()

            formatter.dateFormat = "dd"
            day = formatter.string(from: date)
        
            formatter.dateFormat = "MM"
            month = formatter.string(from: date)

            formatter.dateFormat = "YYYY"
            year = formatter.string(from: date)

            
            //change the button labels to show the dates picked
        
            for (id,_) in MonthLoad.enumerated(){
               
                if (month == MonthNumLoad[id] as? String){
        
                    if id == 0{
                        monthLabel.setText("01")
                    }
                    
                    monthPicker.setSelectedItemIndex(id)
                }
                
            }
            
            for (id,item) in DayLoad.enumerated(){
                
                if (day == item as? String){
                    
                    if id == 0{
                          dayLabel.setText("01")
                    }
                    
                    dayPicker.setSelectedItemIndex(id)
                }
                
            }
            
            for (id,item) in YearLoad.enumerated(){
                
                if (year == item as? String){
                    
                    if id == 0{
                        yearLabel.setText("2015")
                    }
                    
                    yearPicker.setSelectedItemIndex(id)
                }
                
            }
            
            //Show the date in a button
        
            totalDate = "\(day)/\(month)/\(year)"
            
            let newYear = String(year.suffix(4))
            
            dateButton.setTitle("\(day)/\(month)/\(newYear)")
            
        }
        
    
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    // #MARK: Actions - Picker and Button
    
    @IBAction func monthAction(_ value: Int) {
        
        monthLabel.setText(MonthNumLoad[value] as? String)
            
        getMonth = MonthNumLoad[value] as! String
        
        totalDate = "\(getDay)/\(getMonth)/\(String(getYear.suffix(4)))"
        
        dateButton.setTitle(totalDate)
        
    }
    
    @IBAction func dayAction(_ value: Int) {
        
        let day = DayArray[value] as! WKPickerItem
        
        dayLabel.setText(day.title)
        
        getDay = day.title!
        
        totalDate = "\(getDay)/\(getMonth)/\(String(getYear.suffix(2)))"
        
        dateButton.setTitle(totalDate)
        
    }
    
    @IBAction func yearAction(_ value: Int) {
        
        let year = YearArray[value] as! WKPickerItem
        
        yearLabel.setText(year.title)
        
        getYear = year.title!
        
        totalDate = "\(getDay)/\(getMonth)/\(String(getYear.suffix(4)))"
        
        dateButton.setTitle(totalDate)
        
    }
    
    @IBAction func dateAction() {
        print("totalDate = ",totalDate)
    }}
