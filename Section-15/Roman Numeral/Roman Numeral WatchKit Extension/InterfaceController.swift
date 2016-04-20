//
//  InterfaceController.swift
//  Roman Numeral WatchKit Extension
//
//  Created by Pavlo Cretsu on 4/20/16.
//  Copyright © 2016 Pasha Cretsu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var lblRomanNumber: WKInterfaceLabel!
    @IBOutlet var lblCorrect: WKInterfaceLabel!
    @IBOutlet var btnAnswer0: WKInterfaceButton!
    @IBOutlet var btnAnswer1: WKInterfaceButton!
    
    var buttonCorrect : Int = 0
    var totalCorrect : Int = 0
    var romanNumeralArray = ["I", "V", "X", "L", "C", "D", "M"]
    var randomArrayNumber : Int = 0
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    
    override func willActivate() {
        super.willActivate()
    }

    
    override func didDeactivate() {
        super.didDeactivate()
    }
    

    @IBAction func btnAnswer0Action() {
    }
    
    
    @IBAction func btnAnswer1Action() {
    }
}
