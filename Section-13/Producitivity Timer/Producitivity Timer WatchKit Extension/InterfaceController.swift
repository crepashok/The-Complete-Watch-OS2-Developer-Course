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
        resetTimer()
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

    @IBAction func btnStartClick() {
        startTimer()
    }
    
    
    @IBAction func btnResetClick() {
        resetTimer()
    }
    
    func startTimer() {
        tmrTimer.setDate(NSDate(timeIntervalSinceNow: productivityTimeInterval))
        tmrTimer.start()
    }
    
    func resetTimer() {
        tmrTimer.setDate(NSDate(timeIntervalSinceNow: productivityTimeInterval))
        tmrTimer.stop()
    }
    
}
