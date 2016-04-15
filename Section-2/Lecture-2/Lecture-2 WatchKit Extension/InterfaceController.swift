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
    
    var activeColor: UIColor = UIColor.orangeColor()
    
    var inactiveColor: UIColor = UIColor.darkGrayColor()
    
    var someBool : Bool = true
    
    var someString : String = "Mammoth"
    
    var someInt : Int = 7
    
    var someFloat : Float = 0.0
    
    var someDouble : Double = 0.0
    
    var switchValue : Bool = false
    
    var sliderValue : Float = 0.0
    
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
            
            function2()
            
        } else {
            
            function1()
        
        }
    }
    
    @IBAction func sldSliderAction(value: Float) {
        
        sliderValue = value
        
        function3()
    }
    
    func function1() {
        btnButton.setTitle("Button changed")
        lblLabel.setText("Label changed")
        lblLabel.setTextColor(activeColor)
        btnButton.setBackgroundColor(activeColor)
        swtSwitch.setColor(activeColor)
    }
    
    func function2() {
        btnButton.setTitle("Awesome")
        lblLabel.setText("Great")
        lblLabel.setTextColor(inactiveColor)
        btnButton.setBackgroundColor(inactiveColor)
        swtSwitch.setColor(inactiveColor)
    }
    
    func function3() {
        
        lblLabel.setText("Value = \(sliderValue)")
        
        if sliderValue == 1 {
            
            sldSlider.setColor(UIColor.greenColor())
        
        } else if sliderValue == 2 {
            
            sldSlider.setColor(UIColor.orangeColor())
            
        } else if sliderValue == 3 {
            
            sldSlider.setColor(UIColor.magentaColor())
            
        } else {
        
            sldSlider.setColor(UIColor.redColor())
            
        }
        
    }
    
}
