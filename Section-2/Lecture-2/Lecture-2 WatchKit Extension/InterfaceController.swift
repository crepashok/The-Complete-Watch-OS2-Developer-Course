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
    
    var isChanged : Bool = false
    
    var someString : String = "Mammoth"
    
    var someInt : Int = 1
    
    var someFloat : Float = 0.0
    
    var someDouble : Double = 0.0
    
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
        changeTextButton()
    }
    
    @IBAction func swtSwitchAction(value: Bool) {
        changeTextSwitch()
    }
    
    @IBAction func sldSliderAction(value: Float) {
    }
    
    func changeTextButton() {
        
        if someInt == 1 {
        
            btnButton.setTitle(someString)
            
        }
    }
    
    func changeTextSwitch() {
        btnButton.setTitle("Awesome")
        lblLabel.setText("Great")
    }
    
}
