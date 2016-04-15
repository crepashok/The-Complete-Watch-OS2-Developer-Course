//
//  InterfaceController.swift
//  Lecture-2 WatchKit Extension
//
//  Created by Pavlo Cretsu on 4/15/16.
//  Copyright © 2016 Pasha Cretsu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var btnButton: WKInterfaceButton!
    @IBOutlet var swtSwitch: WKInterfaceSwitch!
    @IBOutlet var sldSlider: WKInterfaceSlider!
    @IBOutlet var lblLabel: WKInterfaceLabel!
    
    var someBool : Bool = true
    
    var someString : String = "Mammoth"
    
    var someInt : Int = 7
    
    var someFloat : Float = 0.0
    
    var someDouble : Double = 0.0
    
    var switchValue : Bool = false
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        btnButton.setTitle("Changed")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func btnButtonAction() {
        function1()
    }
    
    @IBAction func swtSwitchAction(value: Bool) {
        
        switchValue = value
        
        if switchValue == false {
            
            function1()
            
        } else {
            
            function2()
        
        }
    }
    
    @IBAction func sldSliderAction(value: Float) {
    }
    
    func function1() {
        btnButton.setTitle("Button changed")
        lblLabel.setText("Label changed")
        lblLabel.setTextColor(UIColor.orangeColor())
        btnButton.setBackgroundColor(UIColor.orangeColor())
    }
    
    func function2() {
        btnButton.setTitle("Awesome")
        lblLabel.setText("Great")
        lblLabel.setTextColor(UIColor.darkGrayColor())
        btnButton.setBackgroundColor(UIColor.darkGrayColor())
    }
    
}
