//
//  InterfaceController.swift
//  Producitivity Timer WatchKit Extension
//
//  Created by Pavlo Cretsu on 4/20/16.
//  Copyright © 2016 Pasha Cretsu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var tmrTimer: WKInterfaceTimer!
    
    var productivityTimeInterval : NSTimeInterval = 1201
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

    @IBAction func btnStartClick() {
        
    }
    
    
    @IBAction func btnResetClick() {
        
    }
    
}
