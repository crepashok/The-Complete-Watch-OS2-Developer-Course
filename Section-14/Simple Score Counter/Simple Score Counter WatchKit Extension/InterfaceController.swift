//
//  InterfaceController.swift
//  Simple Score Counter WatchKit Extension
//
//  Created by Pavlo Cretsu on 4/20/16.
//  Copyright © 2016 Pasha Cretsu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var btnScore0: WKInterfaceButton!
    @IBOutlet var btnScore1: WKInterfaceButton!
    
    var score0 : Int = 0
    var score1 : Int = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

    @IBAction func btnScore0Action() {
        
    }
    
    @IBAction func btnScore1Action() {
        
    }
    
    @IBAction func btnResetAction() {
        
    }
}
